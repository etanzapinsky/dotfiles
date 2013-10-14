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
 ; '(linum ((t (:inherit (shadow default) :background "grey10"))))
 )

;; Marmalade for emacs package installs
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Load auto-complete on startup
(require 'auto-complete-config)
(ac-config-default)

(put 'upcase-region 'disabled nil)

;; Ctrl-h means delete, not help
;(global-set-key [?\C-h] 'delete-backward-char)

;; Set tab size in C
(setq c-basic-offset '8)

;; Shortcut to compile code
(global-set-key [?\C-c ?\c] 'compile)

;; Shortcut to comment line or region of code
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

(when (boundp 'input-decode-map)
  (define-key input-decode-map "^[[1;5C" [(control right)])
  (define-key input-decode-map "^[[1;5D" [(control left)]))

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

;; Beautiful HTML things, just what I was looking for
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Matching parens
(show-paren-mode 1)
;; Adds closing quote, paren, etc. when first is added
(load "~/.emacs.d/conf/autopair.el")
(require 'autopair)
(autopair-global-mode 1)

;; Line numbers, and turning them off in non-code buffers
(load "~/.emacs.d/conf/linum/linum.el")
(require 'linum)
(load-file "~/.emacs.d/conf/linum/linum-off.el")

;; Deletes highlighted content
(delete-selection-mode 1)

;; Potential to highlight a column
(require 'fill-column-indicator)
(setq-default fci-rule-column 80)
(add-hook 'c-mode-hook 'fci-mode)
(add-hook 'python-mode-hook 'fci-mode)

;; Inserting 'import bpdb; bppdb.set_trace()' on M-p
(eval-after-load 'python
  '(define-key python-mode-map [?\M-p] 'add-py-debug))

;; ;; Jedi mode for python
(setq jedi:setup-keys t)
(setq jedi:key-goto-definition (kbd "C-c ."))
(setq jedi:key-complete (kbd "<backtab>"))
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)

;; Color Theme
(load "~/.emacs.d/conf/color-theme.el")
(require 'color-theme)
(load-file "~/.emacs.d/conf/themes/color-theme-cobalt.el")
(require 'color-theme-cobalt)
(load-file "~/.emacs.d/conf/themes/color-theme-sunburst.el")
(require 'color-theme-sunburst)
(color-theme-initialize)
;; (color-theme-sunburst)
(color-theme-cobalt)
;; (load-file "~/.emacs.d/conf/themes/monokai-theme.el")
;; (load-theme 'monokai t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/conf/themes/emacs-color-theme-solarized/")
;(load-theme 'solarized-dark t)

;; Add markdown sytax highlighting
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Highlight wscript files with proper python syntax highlighting
(add-to-list 'auto-mode-alist '("wscript\\'" . python-mode))

;; gyp files are highlighted with json-mode
(add-to-list 'auto-mode-alist '("\\.gyp\\'" . json-mode))

;; Unique buffer names
(require 'uniquify)


;; Ido mode
(ido-mode 1)

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

;; Django mode
(require 'python-django)

;; import pdb things
(defun add-py-debug ()  
      "add debug code and move line down"  
    (interactive)  
    (insert "import bpdb; bpdb.set_trace()"))  

;; cmake mode
(setq load-path (cons (expand-file-name "/dir/with/cmake-mode") load-path))
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))

;; ;; Lisp
;; (load (expand-file-name "~/Development/lisp/quicklisp/slime-helper.el"))
;; (setq inferior-lisp-program "/usr/local/bin/sbcl") ; Replace "sbcl" with the path to your implementation
;; ;; Basic slime
;; (add-to-list 'load-path "~/Development/lisp/slime/")  ; your SLIME directory
;; (require 'slime)
;; (slime-setup)
;; ;; Even more fun slime things
;; (require 'slime-autoloads)
;; (slime-setup '(slime-scratch slime-editing-commands))
;; ;; (slime-setup '(slime-repl)) ; repl only
;; (slime-setup '(slime-fancy)) ; almost everything

;; ;; Scheme
;; (load-library "xscheme")

;; Turns line numbers on
(global-linum-mode 1)
