;; (put 'upcase-region 'disabled nil)

;; Ctrl-h means delete, not help
;(global-set-key [?\C-h] 'delete-backward-char)

;; Set tab size in js to 2
;(setq js-indent-level 2)

;; Set tab size in C
;(setq c-basic-offset '8)

;; Reverts all buffers
;; (defun revert-all-buffers ()
;;     "Refreshes all open buffers from their respective files."
;;     (interactive)
;;     (dolist (buf (buffer-list))
;;       (with-current-buffer buf
;;         (when (and (buffer-file-name) (not (buffer-modified-p)))
;;           (revert-buffer t t t) )))
;;     (message "Refreshed open files.") )

;; Dealing makes sure to always have the most up to date file
;; (global-auto-revert-mode 1)

;; Beautiful HTML things, just what I was looking for
;(require 'web-mode)
;(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Matching parens
;; (show-paren-mode 1)
;; Adds closing quote, paren, etc. when first is added
;(load "~/.emacs.d/conf/autopair.el")
;(require 'autopair)
;(autopair-global-mode 1)

;; Line numbers, and turning them off in non-code buffers
;(load "~/.emacs.d/conf/linum/linum.el")
;(require 'linum)
;(load-file "~/.emacs.d/conf/linum/linum-off.el")
;; highlight current line number
;; (require 'hlinum)
;; (hlinum-activate)
;; highlight current line
;; (global-hl-line-mode 1)

;; Add markdown sytax highlighting
;; (autoload 'markdown-mode "markdown-mode"
;;    "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Highlight wscript files with proper python syntax highlighting
;; (add-to-list 'auto-mode-alist '("wscript\\'" . python-mode))

;; gyp files are highlighted with json-mode
;; (add-to-list 'auto-mode-alist '("\\.gyp\\'" . json-mode))

;; Handlebars mode for files ending in .hbs
;; (add-to-list 'auto-mode-alist '("\\.hbs\\'" . handlebars-mode))

;; Unique buffer names
;; (require 'uniquify)

;; No background when emacs is running in the terminal
;; (defun on-after-init ()
;;   (unless (display-graphic-p (selected-frame))
;;     (set-face-background 'default "unspecified-bg" (selected-frame))))
;; (add-hook 'window-setup-hook 'on-after-init)
    
;; Ido mode
;; (ido-mode 1)

;; Git
;(add-to-list 'load-path "~/.emacs.d/conf/git")
;(require 'git)
;(require 'git-blame)

;; Column number mode
;; (column-number-mode 1)

;; Django mode
;(require 'python-django)

;; cmake mode
;(setq load-path (cons (expand-file-name "/dir/with/cmake-mode") load-path))
;(require 'cmake-mode)
;(setq auto-mode-alist
;      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
;                ("\\.cmake\\'" . cmake-mode))
;              auto-mode-alist))

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

;; No fringes
;; (set-fringe-mode 0)
