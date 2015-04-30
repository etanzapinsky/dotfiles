;;; javascript-conf.el --- Config for javascript minor mode

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

;; Insert "debugger;" on M-p
(defun add-debugger ()
      "Add debugger statement."
    (interactive)
    (insert "debugger;"))
(eval-after-load 'javascript-mode
  '(define-key javascript-mode-map [?\M-p] 'add-debugger))

(provide 'js-conf)

;;; javascript-conf.el ends here
