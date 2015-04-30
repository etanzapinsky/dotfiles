;;; ruby-conf.el --- Config for ruby major mode

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

;; Line at fill column
(setq-default fci-rule-column 100)
(add-hook 'ruby-mode-hook 'fci-mode)

;; Set ruby version to 2.1.2
(exec-path-from-shell-copy-env "RUBY_VERSION")
(exec-path-from-shell-copy-env "rvm")

;; Insert "require 'pry'; binding.pry" on M-p
(defun add-rb-debug ()
      "Add debugger statement."
    (interactive)
    (insert "require 'pry'; binding.pry"))
(eval-after-load 'ruby-mode
  '(define-key ruby-mode-map [?\M-p] 'add-rb-debug))

;; Activate ruby-mode in Gemfile and Protofile
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Protofile\\'" . ruby-mode))

;; Activate web-mode with erb files
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

;; Ruby sane indenting
(setq ruby-deep-indent-paren nil)

;; Use the right ruby
(rvm-use-default)

;; Enable robe mode for ruby files
(add-hook 'ruby-mode-hook 'robe-mode)
;; Robe ruby autocompletion
;; (add-hook 'ruby-mode-hook 'robe-mode) -- auto-complete mode
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-robe))
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-inf-ruby))
;; Teach robe about rvm
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-use-default))  ; this was rvm-activate-corresponding-ruby, but dont want jruby for receipts

;; We never want to use jruby when developing receipts
;; This doens't work great -- but is good enough for now. To make better I have to go digging around
;; in the internals of rspec/rvm mode
(defadvice rvm-activate-corresponding-ruby (after activate-rvm-as-cruby-everywhere activate)
  (rvm-use-default))

;; Rspec dired mode
(add-hook 'dired-mode-hook 'rspec-dired-mode)

;; Rspec Mode with pry
(inf-ruby-switch-setup)

(provide 'ruby-conf)

;;; ruby-conf.el ends here
