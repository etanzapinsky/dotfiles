;;; iterm-conf.el --- Config for emacs in iterm + mouse

;; Copyright (C) 2015 Etan Zapinsky

;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

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
