;;; iterm-conf.el --- Config for emacs in iterm + mouse
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky

;;; Commentary:

;;; History:

;;; Code:

(require 'mouse)
(xterm-mouse-mode t)
(global-set-key [mouse-4] '(lambda ()
                             (interactive)
                             (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
                             (interactive)
                             (scroll-up 1)))
(defun track-mouse (e))
;; iterm scrolling
(add-hook 'after-make-frame-functions
          (lambda (&optional frame)
            (select-frame frame)
            (unless (display-graphic-p)
              ;; enable mouse reporting for terminal emulators
              (xterm-mouse-mode t)
              (global-set-key [mouse-4] '(lambda ()
                                           (interactive)
                                           (scroll-down 1)))
              (global-set-key [mouse-5] '(lambda ()
                                           (interactive)
                                           (scroll-up 1))))))
;; Shitty tmux input malformation (I think)
(when (boundp 'input-decode-map)
  (define-key input-decode-map "^[[1;5C" [(control right)])
  (define-key input-decode-map "^[[1;5D" [(control left)]))
;; Terminal colors
(defun terminal-init-screen ()
  "Terminal initialization function for screen-256color."
  (load "term/xterm")
  (xterm-register-default-colors)
  (tty-set-up-initial-frame-faces))

(provide 'iterm-conf)

;;; iterm-conf.el ends here
