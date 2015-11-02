;;; general-conf.el --- General configs
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky

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

;; Shortcut to compile code
;;  should only be in c mode
;; (global-set-key (kbd "C-x c") 'compile)

;; Shortcut to comment line or region of code
(global-set-key [?\C-\M-c] 'comment-or-uncomment-region-or-line)

;; Neotree toggle
(global-set-key [f8] 'neotree-toggle)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; old newline/newline-and-indent behvior
;; (global-set-key (kbd "C-j") 'newline)
;; (global-set-key (kbd "RET") 'electric-indent-just-newline)

;; Electric pairs
(electric-pair-mode 1)

;; y instead of yes
(fset 'yes-or-no-p 'y-or-n-p)

;; Navigate to windows based on number
(global-set-key (kbd "C-x o") 'ace-window)

(global-set-key (kbd "s-<left>")  'windmove-left)
(global-set-key (kbd "s-<right>") 'windmove-right)
(global-set-key (kbd "s-<up>")    'windmove-up)
(global-set-key (kbd "s-<down>")  'windmove-down)

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

;; Smart mode line
(setq sml/theme 'dark)
(sml/setup)

;; Color theme
;; (load-theme 'base16-flat-light t)

;; Are you sure you want to quit?
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
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

(provide 'general-conf)

;;; after-init.el ends here
