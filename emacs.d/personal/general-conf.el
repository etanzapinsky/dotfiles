;;; general-conf.el --- General configs
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky
;; -*-no-byte-compile: t; -*-

;;; Commentary:
;; General configurations that are too short to fit into a mode specific conf.

;;; History:

;;; Code:

;; Highlight fill column
(require 'fill-column-indicator)

;; Turn linums off in Emacs * buffers
(require 'linum-off)

;; Flycheck mode
(global-flycheck-mode 1)

;; Textmate minor mode
(require 'textmate)
(textmate-mode 1)
(define-key *textmate-mode-map* (kbd "M-t") nil)
(define-key *textmate-mode-map* (kbd "C-c C-t") nil)

;; Shortcut to comment line or region of code
(global-set-key [?\C-\M-c] 'comment-or-uncomment-region-or-line)

;; Neotree toggle
(global-set-key [f8] 'neotree-toggle)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Electric pairs
(electric-pair-mode 1)

;; y instead of yes
(fset 'yes-or-no-p 'y-or-n-p)

;; Navigate to windows based on number
(global-set-key (kbd "C-x o") 'ace-window)

;; Avy mode
(global-set-key (kbd "C-;")   'avy-goto-word-or-subword-1)
(global-set-key (kbd "C-M-;") 'avy-goto-char)

;; Pop back to mark
(global-set-key (kbd "C-,") 'pop-to-mark-command)

;; Zoom keybindings
(autoload 'zoom-in/out "zoom-frm"
  "Zoom current frame or buffer in or out" t)
(global-set-key (kbd "C-+") 'zoom-in/out)
(global-set-key (kbd "C--") 'zoom-in/out)
(global-set-key (kbd "C-=") 'zoom-in/out)
(global-set-key (kbd "C-0") 'zoom-in/out)

;; Popwin for popup window management
(require 'popwin)
(popwin-mode 1)

;; Ensure environment variables inside emacs look the same as user shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Multiple cursors
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; Magit edit commit messages etc with editor
(add-hook 'shell-mode-hook  'with-editor-export-editor)
(add-hook 'term-mode-hook   'with-editor-export-editor)
(add-hook 'eshell-mode-hook 'with-editor-export-editor)

;; Smart mode line
;; (sml/setup)

;; Are you sure you want to quit?
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed."
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(when window-system
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))

;; Calendar mode
(require 'calfw)
(require 'calfw-org)

;; Perspective mode
(persp-mode 1)

;; Winner mode -- undo window configuration changes
(when (fboundp 'winner-mode)
      (winner-mode 1))

;; Enable projectile
(projectile-mode)

;; Enable spaceline
(require 'spaceline-config)
(spaceline-all-the-icons-theme)
(spaceline-info-mode)
(spaceline-helm-mode)

;; Composable marking commands
;; (require 'composable)
;; (composable-mode)

;; Diminsh some minor modes which take up space unnecessarily
(eval-after-load "helm" '(diminish 'helm-mode))
(eval-after-load "company" '(diminish 'company-mode))
(eval-after-load "textmate" '(diminish 'textmate-mode))
(eval-after-load "flycheck" '(diminish 'flycheck-mode))
(eval-after-load "auto-revert" '(diminish 'auto-revert-mode))

;; Add html files to web-mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Start server for emacsclient when emacs starts
(load "server")
(unless (server-running-p) (server-start))

;; Markdown mode to use olivetti mode
(add-hook 'markdown-mode-hook (lambda ()
                                (olivetti-mode t)))

(provide 'general-conf)

;;; general-conf.el ends here
