;;; general-conf.el --- General configs
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky
;; -*-no-byte-compile: t; -*-

;;; Commentary:
;; Mac OS X specific config

;;; History:

;;; Code:

;; Movement commands
(global-set-key (kbd "s-<left>")  'windmove-left)
(global-set-key (kbd "s-<right>") 'windmove-right)
(global-set-key (kbd "s-<up>")    'windmove-up)
(global-set-key (kbd "s-<down>")  'windmove-down)

;; Standard commands
(global-set-key (kbd "s-q") 'ask-before-closing)
(global-set-key (kbd "s-w") 'delete-window)
(global-set-key (kbd "s-c") 'kill-ring-save)
(global-set-key (kbd "s-x") 'kill-region)
(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "s-z") 'undo)
(global-set-key (kbd "s-n") 'new-frame)

(provide 'mac-conf)

;;; mac-conf.el ends here
