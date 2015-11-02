;;; company-conf.el --- Config for company minor mode
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky

;;; Commentary:

;;; History:

;;; Code:

;; Load company-mode on startup -- different module that has same functionality as auto-complete
(global-company-mode 1)

(setq company-idle-delay .3) ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0) ; remove annoying blinking

(defvar-local company-fci-mode-on-p nil)

(defun company-turn-off-fci (&rest ignore)
  "Turn off fci minor mode when using company minor mode."
  (when (boundp 'fci-mode)
    (setq company-fci-mode-on-p fci-mode)
    (when fci-mode (fci-mode -1))))

(defun company-maybe-turn-on-fci (&rest ignore)
  "Turn on fci minor mode when done using company minor mode."
  (when company-fci-mode-on-p (fci-mode 1)))

(add-hook 'company-completion-started-hook 'company-turn-off-fci)
(add-hook 'company-completion-finished-hook 'company-maybe-turn-on-fci)
(add-hook 'company-completion-cancelled-hook 'company-maybe-turn-on-fci)

(provide 'company-conf)

;;; company-conf.el ends here
