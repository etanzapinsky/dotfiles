;;; coffee-conf.el --- Config for coffee major mode
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky

;;; Commentary:

;;; History:

;;; Code:

(custom-set-variables '(coffee-tab-width 2))
(defun my-coffee-mode-hook ()
  (setq tab-width 2 indent-tabs-mode nil))
(add-hook 'coffee-mode-hook 'my-coffee-mode-hook)

;; Insert "debugger" on M-p
(defun add-coffee-debug ()
      "Add debugger statement."
    (interactive)
    (insert "debugger"))
(eval-after-load 'coffee-mode
  '(define-key coffee-mode-map [?\M-p] 'add-coffee-debug))

(provide 'coffee-conf)

;;; coffee-conf.el ends here
