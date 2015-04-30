;;; python-conf.el --- Config for python major mode

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
(setq-default fci-rule-column 80)
(add-hook 'python-mode-hook 'fci-mode)

;; Insert 'import bpdb; bppdb.set_trace()' on M-p
(defun add-py-debug ()
      "Add debugger statement."
    (interactive)
    (insert "import bpdb; bpdb.set_trace()"))
(eval-after-load 'python
  '(define-key python-mode-map [?\M-p] 'add-py-debug))

;; Jedi mode for python
(setq jedi:setup-keys t)
(setq jedi:key-goto-definition (kbd "C-c ."))
(setq jedi:key-complete (kbd "<backtab>"))
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)

(provide 'python-conf)

;;; python-conf.el ends here
