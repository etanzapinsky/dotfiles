(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#ecf0f1" "#e74c3c" "#2ecc71" "#f1c40f" "#2492db" "#9b59b6" "#1abc9c" "#2c3e50"])
 '(autopair-global-mode t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("d44939ef462b7efb9bb5739f2dd50b03ac9ecf98c4df6578edcf145d6a2d188d" "3a69621a68c2d3550a4c777ffc000e1ea66f5bc2f61112814c591e1bda3f5704" "a5ce06f368dd82a9dade9261bccf5c30e2c7415a582bbd0a9337ea9f6af9e265" "b880872e60d1c7090fcd3d89f287d2a5681e57be9ac90d4682ea442149f5135f" "29b652383ce8b04163146f05f522d8f000ddd97173c9715d7416998278edecd8" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "e80932ca56b0f109f8545576531d3fc79487ca35a9a9693b62bf30d6d08c9aaf" "2a86b339554590eb681ecf866b64ce4814d58e6d093966b1bf5a184acf78874d" "c56d90af9285708041991bbc780a073182cbe91721de17c6e7a8aac1380336b3" "bc471c0ae74c789645639c9ccbaf2092bb00e56c97f9449198de86fe3722a6bc" "31a01668c84d03862a970c471edbd377b2430868eccf5e8a9aec6831f1a0908d" "e3c90203acbde2cf8016c6ba3f9c5300c97ddc63fcb78d84ca0a144d402eedc6" "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" "0ba649556dc51762e6794b92017f6f7406754ae3136eafef686d81c6da176cc5" "8022cea21aa4daca569aee5c1b875fbb3f3248a5debc6fc8cf5833f2936fbb22" "ae8d0f1f36460f3705b583970188e4fbb145805b7accce0adb41031d99bd2580" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "41b6698b5f9ab241ad6c30aea8c9f53d539e23ad4e3963abff4b57c0f8bf6730" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" "9bac44c2b4dfbb723906b8c491ec06801feb57aa60448d047dbfdbd1a8650897" "978ff9496928cc94639cb1084004bf64235c5c7fb0cfbcc38a3871eb95fa88f6" "53e29ea3d0251198924328fd943d6ead860e9f47af8d22f0b764d11168455a8e" default)))
 '(delete-old-versions (quote other))
 '(delete-selection-mode t)
 '(fci-rule-color "#343d46")
 '(fringe-mode 0 nil (fringe))
 '(global-auto-revert-mode t)
 '(global-linum-mode t)
 '(helm-always-two-windows nil)
 '(helm-split-window-default-side (quote other))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(js-indent-level 2)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(ns-function-modifier (quote hyper))
 '(org-agenda-custom-commands
   (quote
    (("d" todo "DELEGATED" nil)
     ("c" todo "DONE|DEFERRED|CANCELLED" nil)
     ("w" todo "WAITING" nil)
     ("W" agenda ""
      ((org-agenda-ndays 21)))
     ("A" agenda ""
      ((org-agenda-skip-function
        (lambda nil
          (org-agenda-skip-entry-if
           (quote notregexp)
           "\\=.*\\[#A\\]")))
       (org-agenda-ndays 1)
       (org-agenda-overriding-header "Today's Priority #A tasks: ")))
     ("u" alltodo ""
      ((org-agenda-skip-function
        (lambda nil
          (org-agenda-skip-entry-if
           (quote scheduled)
           (quote deadline)
           (quote regexp)
           "
]+>")))
       (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
 '(org-agenda-files (quote ("~/Dropbox (Personal)/Org/Todo.org")))
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday nil)
 '(org-deadline-warning-days 14)
 '(org-default-notes-file "~/Dropbox (Personal)/Org/Notes.org")
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-remember-store-without-prompt t)
 '(org-remember-templates
   (quote
    ((116 "* TODO %?
  %u" "~/todo.org" "Tasks")
     (110 "* %u %?" "~/notes.org" "Notes"))))
 '(org-reverse-note-order t)
 '(paradox-github-token t)
 '(remember-annotation-functions (quote (org-remember-annotation)))
 '(remember-handler-functions (quote (org-remember-handler)))
 '(rspec-use-rvm t)
 '(scroll-bar-mode nil)
 '(scroll-step 0)
 '(show-paren-mode t)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((30 . "#e74c3c")
     (60 . "#c0392b")
     (90 . "#e67e22")
     (120 . "#d35400")
     (150 . "#f1c40f")
     (180 . "#d98c10")
     (210 . "#2ecc71")
     (240 . "#27ae60")
     (270 . "#1abc9c")
     (300 . "#16a085")
     (330 . "#2492db")
     (360 . "#0a74b9"))))
 '(vc-annotate-very-old-color "#0a74b9")
 '(vc-make-backup-files t)
 '(version-control t)
 '(when (not (facep (aref ansi-term-color-vector 0))))
 '(window-number-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight thin :height 110 :width condensed :foundry "nil" :family "Input Mono Narrow"))))
 '(helm-source-header ((t (:background "#abd7f0" :foreground "black" :weight bold :height 1.3 :family "Input Sans Narrow")))))


;; Install all packages if they're not installed already
(setq package-list '(ag s dash autopair base16-theme coffee-mode fill-column-indicator flycheck pkg-info epl dash handlebars-mode helm-git-grep helm async helm-projectile projectile pkg-info epl dash f dash s s helm async helm-swoop helm async jedi python-environment deferred auto-complete popup epc ctable concurrent deferred json-mode json-snatcher json-reformat json-reformat json-snatcher linum-off magit git-rebase-mode git-commit-mode markdown-mode miniedit multiple-cursors neotree popup powerline projectile pkg-info epl dash f dash s s protobuf-mode python-environment deferred rainbow-mode robe inf-ruby rspec-mode rvm s sass-mode haml-mode slim-mode spacegray-theme textmate web-mode window+ window-number yaml-mode))

;; ELPA package archives
(setq package-archives 
    '(("gnu" .
       "http://elpa.gnu.org/packages/")
      ("marmalade" .
       "https://marmalade-repo.org/packages/")
      ("melpa" .
       "http://melpa.milkbox.net/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)
; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))
; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


(defvar emacs-dir (file-name-directory load-file-name)
  "The root .emacs.d dir.")
(defvar personal-dir (expand-file-name "personal" emacs-dir)
  "User's custom configurations.")
(add-to-list 'load-path personal-dir)

(add-hook 'after-init-hook (lambda () (load (expand-file-name "after-init.el" emacs-dir))))
