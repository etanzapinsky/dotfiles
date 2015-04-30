;;; after-init.el --- Config to be run after packages are initialized
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky

;;; Commentary:

;;; History:

;;; Code:

;; Highlight fill column
(require 'fill-column-indicator)

;; Turn linums off in Emacs * buffers
(require 'linum-off)

;; Load auto-complete on startup
;; (require 'auto-complete-config)
;; (ac-config-default)
;; Load company-mode on startup -- different module that has same functionality as auto-complete
(global-company-mode 1)

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
(global-set-key (kbd "C-j") 'newline)
(global-set-key (kbd "RET") 'electric-indent-just-newline)

;; y instead of yes
(fset 'yes-or-no-p 'y-or-n-p)

;; Navigate to windows based on number
(global-set-key (kbd "C-x o") 'ace-window)

;; Ensure environment variables inside emacs look the same as user shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Multiple cursors
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;; Powerline
(require 'powerline)
(powerline-default-theme)

;; My personal configs - loaded from `personal-dir`, ie. .emacs.d/personal
(require 'python-conf)
(require 'ruby-conf)
(require 'javascript-conf)
(require 'c-conf)
(require 'protobuf-conf)
(require 'iterm-conf)
(require 'helm-conf)
(require 'go-conf)
(require 'company-conf)
(require 'tramp-conf)
(require 'org-conf)

;;; after-init.el ends here
