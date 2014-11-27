;; Line at fill column
(setq-default fci-rule-column 80)
(add-hook 'python-mode-hook 'fci-mode)

;; Insert 'import bpdb; bppdb.set_trace()' on M-p
(defun add-py-debug ()
      "Add debugger statement."
    (interactive)
    (insert "import bpdb; bpdb.set_trace()"))
(eval-after-load 'python
  '(define-key python-mode-map [?\M-p] 'add-py-debug))

;; Jedi mode for python
(setq jedi:setup-keys t)
(setq jedi:key-goto-definition (kbd "C-c ."))
(setq jedi:key-complete (kbd "<backtab>"))
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)

(provide 'python-conf)
