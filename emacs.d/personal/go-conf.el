;;; go-conf.el --- Config for go major mode

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
;; http://dominik.honnef.co/posts/2013/03/writing_go_in_emacs/
;; UPDATING AUTOLOADS:
;; If using go-mode from the git repository, the procedure is similar,
;; but requires an additional step to generate the go-mode-load.el
;; file. From within Emacs, run M-x update-file-autoloads, point it at
;; the go-mode.el file and tell it to generate a go-mode-load.el
;; file. From that point on the procedure is the same as before.

;; Configure `gofmt-before-save` to use `goimports` instead of `gofmt`
;; If this complains start GUI emacs from the shell with:
;;   nohup /Applications/Emacs.app/Contents/MacOS/Emacs &

;;; History:

;;; Code:

(exec-path-from-shell-copy-env "GOPATH")
(defvar goimports-path (expand-file-name "bin/goimports" (getenv "GOPATH"))
  "Path to goimports executable.")
(setq gofmt-command goimports-path)

;; Autoload entries and associate *.go files with go-mode
(require 'go-mode-autoloads)

;; Go tab width
;; Sets tab size for dev at 2 spaces, but always is one tab char
(defun my-go-mode-hook ()
  (setq tab-width 2 indent-tabs-mode 1)
  ; Call Gofmt before saving 
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  ; Return back to previous spot
  (local-set-key (kbd "M-,") 'pop-tag-mark)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet")))
(add-hook 'go-mode-hook 'my-go-mode-hook)

;; Using company-mode
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-go))

(provide 'go-conf)

;;; go-conf.el ends here
