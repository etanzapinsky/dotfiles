;;; javascript-conf.el --- Config for javascript minor mode
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky

;;; Commentary:

;;; History:

;;; Code:

;; Insert "debugger;" on M-p
(defun add-debugger ()
      "Add debugger statement."
    (interactive)
    (insert "debugger;"))
(eval-after-load 'javascript-mode
  '(define-key javascript-mode-map [?\M-p] 'add-debugger))

(provide 'js-conf)

;;; javascript-conf.el ends here
