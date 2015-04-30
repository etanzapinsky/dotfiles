;;; init.el --- My emacs init file
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky

;;; Commentary:

;;; History:

;;; Code:

(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
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
                             (require 'general-conf)
                             (require 'python-conf)
                             (require 'ruby-conf)
                             (require 'javascript-conf)
                             (require 'c-conf)
                             (require 'protobuf-conf)
                             (require 'iterm-conf)
                             (require 'helm-conf)
                             (require 'go-conf)
                             (require 'company-conf)
                             (require 'org-conf)))

;;; init.el ends here
