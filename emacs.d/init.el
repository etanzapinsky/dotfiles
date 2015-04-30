;;; init.el --- My emacs init file

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

(add-hook 'after-init-hook (lambda () (load (expand-file-name "after-init.el" emacs-dir))))

;;; init.el ends here
