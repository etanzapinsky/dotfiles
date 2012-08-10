(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(put 'upcase-region 'disabled nil)

(global-set-key [?\C-h] 'delete-backward-char)

(setq c-basic-offset '8)
(global-set-key [?\C-c ?\c] 'compile)
(global-set-key [?\C-\M-c] 'comment-or-uncomment-region-or-line)

;; C kernel coding styles
(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
	 (column (c-langelem-2nd-pos c-syntactic-element))
	 (offset (- (1+ column) anchor))
	 (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

(add-hook 'c-mode-hook
          (lambda ()
            (let ((filename (buffer-file-name)))
              ;; Enable kernel mode for the appropriate files
              (when (and filename
                         (string-match (expand-file-name "~/src/linux-trees")
                                       filename))
                (setq indent-tabs-mode t)
                (c-set-style "linux-tabs-only")))))

(add-to-list 'load-path "~/.emacs.d/conf/")

;; Soft tabs
(setq-default indent-tabs-mode nil)

;; Reverts all buffers
(defun revert-all-buffers ()
    "Refreshes all open buffers from their respective files."
    (interactive)
    (dolist (buf (buffer-list))
      (with-current-buffer buf
        (when (and (buffer-file-name) (not (buffer-modified-p)))
          (revert-buffer t t t) )))
    (message "Refreshed open files.") )

;; Dealing makes sure to always have the most up to date file
(global-auto-revert-mode 1)

;; nxhtml --> colors javascript, css, php properly inside a html page
; (load "~/.emacs.d/conf/nxhtml/autostart.el")
; (require 'nxhtml-mumamo)
;; Teaching nxhtml about html5
; (add-to-list 'load-path "~/.emacs.d/conf/html5-el/")
;(eval-after-load "rng-loc"
;  '(add-to-list 'rng-schema-locating-files "~/.emacs.d/conf/html5-el/schemas.xml"))
; (require 'whattf-dt)

;; Matching parens
(show-paren-mode 1)
;; Adds closing quote, paren, etc. when first is added
(load "~/.emacs.d/conf/autopair.el")
(require 'autopair)
(electric-pair-mode 1)

;; Line numbers, and turning them off in non-code buffers
(load "~/.emacs.d/conf/linum/linum.el")
(require 'linum)
(load-file "~/.emacs.d/conf/linum/linum-off.el")

;; Deletes highlighted content
(delete-selection-mode 1)

;; Potential to highlight a collumn
(require 'fill-column-indicator)
(setq-default fill-column 80)

;; Color Theme
(load "~/.emacs.d/conf/color-theme.el")
(require 'color-theme)
(load-file "~/.emacs.d/conf/themes/color-theme-cobalt.el")
(require 'color-theme-cobalt)
(load-file "~/.emacs.d/conf/themes/color-theme-sunburst.el")
(require 'color-theme-sunburst)
(color-theme-initialize)
(color-theme-sunburst)

;; Unique buffer names
(require 'uniquify)

;; Flymake mode
; (load-library "flymake-cursor")

;; Python mode
; (add-to-list 'load-path "~/.emacs.d/conf/python-mode") 
; (setq py-install-directory "~/.emacs.d/conf/python-mode")
; (require 'python-mode)

;; Pyflakes constant check
; Need to have pyflakes intalled on the computer
; Only works when flymake-mode is enabled
; http://www.plope.com/Members/chrism/flymake-mode
;(when (load "flymake" t) 
;    (defun flymake-pyflakes-init () 
;    (let* ((temp-file (flymake-init-create-temp-buffer-copy 
;                        'flymake-create-temp-inplace)) 
;            (local-file (file-relative-name 
;                         temp-file 
;                         (file-name-directory buffer-file-name)))) 
;       (list "pyflakes" (list local-file)))) 
;
;   (add-to-list 'flymake-allowed-file-name-masks 
;                '("\\.py\\'" flymake-pyflakes-init))) 
; (add-hook 'find-file-hook 'flymake-find-file-hook)

;; Pylint current buffer
; (defun lint-buffer ()
;   "Run lint script on current buffer"
;   (interactive)
;   (compile (concat
;             "~/.emacs.d/conf/pylint/pylint.sh "
;             (buffer-file-name))))


;; Ido mode
(ido-mode 1)

;; Icicles
; (add-to-list 'load-path "~/.emacs.d/conf/icicles") 
; (require 'icicles)

;; Find in Project
; (add-to-list 'load-path "~/.emacs.d/conf/rinari")
; (require 'find-file-in-project)

;; Git
(add-to-list 'load-path "~/.emacs.d/conf/git")
(require 'git)
(require 'git-blame)

;; iterm + mouse
(require 'mouse)
(xterm-mouse-mode t)
(global-set-key [mouse-4] '(lambda ()
                             (interactive)
                             (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
                             (interactive)
                             (scroll-up 1)))
(defun track-mouse (e))

;; Textmate minor mode
(add-to-list 'load-path "~/.emacs.d/conf/textmate")
(require 'textmate)
(textmate-mode 1)

;; Column number mode
(column-number-mode 1)

;; Lisp
(load (expand-file-name "~/Development/lisp/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/local/bin/sbcl") ; Replace "sbcl" with the path to your implementation
;; Basic slime
(add-to-list 'load-path "~/Development/lisp/slime/")  ; your SLIME directory
(require 'slime)
(slime-setup)
;; Even more fun slime things
(require 'slime-autoloads)
(slime-setup '(slime-scratch slime-editing-commands))
;; (slime-setup '(slime-repl)) ; repl only
(slime-setup '(slime-fancy)) ; almost everything

;; ;; Scheme
;; (load-library "xscheme")

(global-linum-mode 1)
