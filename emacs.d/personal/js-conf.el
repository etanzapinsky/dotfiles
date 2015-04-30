;; Insert "debugger;" on M-p
(defun add-debugger ()
      "Add debugger statement."
    (interactive)
    (insert "debugger;"))
(eval-after-load 'javascript-mode
  '(define-key javascript-mode-map [?\M-p] 'add-debugger))

(provide 'js-conf)
