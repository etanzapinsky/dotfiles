;; Line at fill column
(setq-default fci-rule-column 100)
(add-hook 'ruby-mode-hook 'fci-mode)

;; Set ruby version to 2.1.2
(exec-path-from-shell-copy-env "RUBY_VERSION")
(exec-path-from-shell-copy-env "rvm")

;; Insert "require 'pry'; binding.pry" on M-p
(defun add-rb-debug ()
      "Add debugger statement."
    (interactive)
    (insert "require 'pry'; binding.pry"))
(eval-after-load 'ruby-mode
  '(define-key ruby-mode-map [?\M-p] 'add-rb-debug))

;; Activate ruby-mode in Gemfile and Protofile
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Protofile\\'" . ruby-mode))

;; Activate web-mode with erb files
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

;; Ruby sane indenting
(setq ruby-deep-indent-paren nil)

;; Use the right ruby
(rvm-use-default)

;; Enable robe mode for ruby files
(add-hook 'ruby-mode-hook 'robe-mode)
;; Robe ruby autocompletion
;; (add-hook 'ruby-mode-hook 'robe-mode) -- auto-complete mode
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-robe))
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-inf-ruby))
;; Teach robe about rvm
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-use-default))  ; this was rvm-activate-corresponding-ruby, but dont want jruby for receipts

;; We never want to use jruby when developing receipts
;; This doens't work great -- but is good enough for now. To make better I have to go digging around
;; in the internals of rspec/rvm mode
(defadvice rvm-activate-corresponding-ruby (after activate-rvm-as-cruby-everywhere activate)
  (rvm-use-default))

;; Rspec dired mode
(add-hook 'dired-mode-hook 'rspec-dired-mode)

;; Rspec Mode with pry
(inf-ruby-switch-setup)

(provide 'ruby-conf)
