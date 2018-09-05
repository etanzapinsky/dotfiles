;;; init.el --- My emacs init file
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky
;; -*-no-byte-compile: t; -*-

;;; Commentary:

;;; History:

;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(defvar emacs-dir (file-name-directory load-file-name)
  "The root .emacs.d directory.")
(defvar personal-dir (expand-file-name "personal" emacs-dir)
  "Directory for user's mode specific configurations.")
(defvar customize-el (expand-file-name "customize.el" emacs-dir)
  "User's custom config installed by customize.")

;; Load personalizations
(add-to-list 'load-path personal-dir)

;; Sets file so place configurations saved by customize
(setq custom-file customize-el)
(load custom-file)

;; Configs to load from personal after init is done
(add-hook 'after-init-hook (lambda ()
                             (require 'c-conf)
                             (require 'company-conf)
                             (require 'general-conf)
                             (require 'go-conf)
                             (require 'helm-conf)
                             (require 'iterm-conf)
                             (require 'mac-conf)
                             (require 'org-conf)
                             (require 'protobuf-conf)
                             (require 'python-conf)
                             (require 'typescript-conf)))

;;; init.el ends here
