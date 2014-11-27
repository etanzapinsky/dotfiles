;; Line at fill column
(setq-default fci-rule-column 100)
(add-hook 'ruby-mode-hook 'fci-mode)

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

;; Ruby sane indenting
(setq ruby-deep-indent-paren nil)
;; Robe ruby autocompletion
(add-hook 'ruby-mode-hook 'robe-mode)
;; Teach robe about rvm
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(provide 'ruby-conf)
