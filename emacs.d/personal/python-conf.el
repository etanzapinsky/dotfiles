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

(defun my-elpy-mode-hook ()
  "My special mode hook for elpy."
  ;; Return back to previous spot
  (local-set-key (kbd "M-,") 'pop-tag-mark))
(add-hook 'elpy-mode-hook 'my-elpy-mode-hook)

(provide 'python-conf)

;;; python-conf.el ends here
