;; Highlight fill column
(require 'fill-column-indicator)

;; Turn linums off in Emacs * buffers
(require 'linum-off)

;; Load auto-complete on startup
(require 'auto-complete-config)
(ac-config-default)

;; Textmate minor mode
(require 'textmate)
(textmate-mode 1)
(define-key *textmate-mode-map* (kbd "M-t") nil)

;; Shortcut to compile code
;;  should only be in c mode
(global-set-key [?\C-c ?\c] 'compile)

;; Shortcut to comment line or region of code
(global-set-key [?\C-\M-c] 'comment-or-uncomment-region-or-line)

;; Neotree toggle
(global-set-key [f8] 'neotree-toggle)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Navigate to windows based on number
(require 'window-number)

;; My personal configs - loaded from `personal-dir`, ie. .emacs.d/personal
(require 'python-conf)
(require 'ruby-conf)
(require 'c-conf)
(require 'protobuf-conf)
(require 'iterm-conf)
(require 'helm-conf)
