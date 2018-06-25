;;; python-conf.el --- Config for python major mode
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky
;; -*-no-byte-compile: t; -*-

;;; Commentary:

;;; History:

;;; Code:

;; Enable elpy
(elpy-enable)

;; Use flycheck for elpy instead of flymake
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode 'flycheck-mode))

;; Python debugging helper functions
(defun add-py-debug ()
  "Add debug code and move line down"
  (interactive)
  (insert "import pdb; pdb.set_trace();"))

(defun remove-py-debug ()
  "Remove py debug code, if found"
  (interactive)
  (let ((x (line-number-at-pos))
        (cur (point)))
    (search-forward-regexp "^[ ]*import pdb; pdb.set_trace();")
    (if (= x (line-number-at-pos))
        (let ()
          (move-beginning-of-line 1)
          (kill-line 1)
          (move-beginning-of-line 1))
      (goto-char cur))))

(defun find-py-debug ()
  "Find the py debug code, if any"
 (interactive)
 (search-forward-regexp "^[ ]*import pdb; pdb.set_trace();")
 (move-beginning-of-line 1))

(defun my-elpy-mode-hook ()
  "My special mode hook for elpy."
  ;; Return back to previous spot
  (local-set-key (kbd "M-,") 'pop-tag-mark)
  ;; Add pdb to current line
  (local-set-key (kbd "M-p") 'add-py-debug)
  ;; Remove all pdbs from buffer
  (local-set-key (kbd "M-]") 'remove-py-debug)
  ;; Find pdb in buffer
  (local-set-key (kbd "M-[") 'find-py-debug))
(add-hook 'elpy-mode-hook 'my-elpy-mode-hook)

;; Helpful keybindings to easily activate / access elpy
(global-set-key (kbd "C-c e") 'pyvenv-activate)
(global-set-key (kbd "C-c d") 'pyvenv-deactivate)
(global-set-key (kbd "C-c w") 'pyvenv-workon)

;; Add py-yapf to run on file save
(add-hook 'python-mode-hook 'py-yapf-enable-on-save)

;; Add mypy to python check list
(require 'flycheck-mypy)
(flycheck-add-next-checker 'python-flake8 'python-mypy)

;; Dont trash kill ring on save of python file
;; See: https://www.reddit.com/r/emacs/comments/4vo9qh/losing_killring_on_save/
(require 'nadvice)
(defun my-save-kill-ring (fun &rest _args)
  (let ((kill-ring nil))
    (funcall fun)))
(advice-add 'py-yapf-buffer :around 'my-save-kill-ring)


(provide 'python-conf)

;;; python-conf.el ends here
