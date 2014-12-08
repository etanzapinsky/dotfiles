;; Install all packages if they're not installed already
(setq package-list '(ag s dash autopair base16-theme coffee-mode fill-column-indicator flycheck pkg-info epl dash handlebars-mode helm-git-grep helm async helm-projectile projectile pkg-info epl dash f dash s s helm async helm-swoop helm async jedi python-environment deferred auto-complete popup epc ctable concurrent deferred json-mode json-snatcher json-reformat json-reformat json-snatcher linum-off magit git-rebase-mode git-commit-mode markdown-mode miniedit multiple-cursors neotree popup powerline projectile pkg-info epl dash f dash s s protobuf-mode python-environment deferred rainbow-mode robe inf-ruby rspec-mode rvm s sass-mode haml-mode slim-mode spacegray-theme textmate web-mode window+ window-number yaml-mode))
; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))
; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

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

;; y instead of yes
(fset 'yes-or-no-p 'y-or-n-p)

;; Navigate to windows based on number
(require 'window-number)

;; My personal configs - loaded from `personal-dir`, ie. .emacs.d/personal
(require 'python-conf)
(require 'ruby-conf)
(require 'c-conf)
(require 'protobuf-conf)
(require 'iterm-conf)
(require 'helm-conf)
