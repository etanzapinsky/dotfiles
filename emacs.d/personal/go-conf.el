;;; go-conf.el --- Config for go major mode
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky

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

;; Go oracle
(defvar gooracle-executable (expand-file-name "bin/oracle" (getenv "GOPATH"))
  "Path to gooracle executable.")
(setq go-oracle-command gooracle-executable)
(defvar gooracle-file (expand-file-name "src/golang.org/x/tools/cmd/oracle/oracle.el" (getenv "GOPATH"))
  "Path to gooracle elisp config.")
(load gooracle-file)

;; Go rename
(defvar gorename-file (expand-file-name "src/golang.org/x/tools/refactor/rename/go-rename.el" (getenv "GOPATH"))
  "Path to gorename executable.")
(load gorename-file)

;; Autoload entries and associate *.go files with go-mode
(require 'go-mode-autoloads)

;; Add go company backend
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-go))

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
  ; Run godoc
  (local-set-key (kbd "C-'") 'godoc)
  ; Compile and run tests
  (local-set-key (kbd "C-c C-c") 'compile)
  ; Go rename
  (local-set-key (kbd "C-%") 'go-rename)
  ; Go test current test
  (local-set-key (kbd "C-c C-r") 'go-test-current-test)
  ; Go test current file
  (local-set-key (kbd "C-c C-t") 'go-test-current-file)
  ; Go test current project
  (local-set-key (kbd "C-c C-p") 'go-test-current-project)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go install -v")))
(add-hook 'go-mode-hook 'my-go-mode-hook)

;; Add gohtml files to web-mode
(add-to-list 'auto-mode-alist '("\\.gohtml\\'" . web-mode))

(provide 'go-conf)

;;; go-conf.el ends here
