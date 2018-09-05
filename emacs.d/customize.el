;;; customize.el --- Variables set by customize
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky
;; -*-no-byte-compile: t; -*-

;;; Commentary:

;;; History:

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#f7f9fb" "#bf8b56" "#56bf8b" "#8bbf56" "#8b56bf" "#bf568b" "#8b56bf" "#405c79"])
 '(ansi-term-color-vector
   [unspecified "#f7f9fb" "#bf8b56" "#56bf8b" "#8bbf56" "#8b56bf" "#bf568b" "#8b56bf" "#405c79"] t)
 '(aw-keys (quote (97 115 100 102 103 104 106 107 108)))
 '(aw-scope (quote frame))
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(compilation-scroll-output (quote first-error))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-day)))
 '(custom-safe-themes
   (quote
    ("5fa8f5091601a626e7db87294c4bd77220766eedd43148b4bfb010ecdd660237" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "d96587ec2c7bf278269b8ec2b800c7d9af9e22d816827639b332b0e613314dfd" "aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "d5f17ae86464ef63c46ed4cb322703d91e8ed5e718bf5a7beb69dd63352b26b2" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "6271fc9740379f8e2722f1510d481c1df1fcc43e48fa6641a5c19e954c21cc8f" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "60e09d2e58343186a59d9ed52a9b13d822a174b33f20bdc1d4abb86e6b17f45b" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "146061a7ceea4ccc75d975a3bb41432382f656c50b9989c7dc1a7bb6952f6eb4" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "fec45178b55ad0258c5f68f61c9c8fd1a47d73b08fb7a51c15558d42c376083d" "36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "c11421683c971b41d154b1a4ef20a2c800537b72fefa618b50b184bbfe6b48a0" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "36d92f830c21797ce34896a4cf074ce25dbe0dabe77603876d1b42316530c99d" "b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "f2503f0a035c2122984e90eb184185769ee665de5864edc19b339856942d2d2d" "ce585b387d84fc4bbb02b8766bfe82607f891e25602ec3550db858e09c10eb7d" "a922c743710bb5d7c14995345549141f01211ff5089057dc718a5a33104c3fd1" "3b24f986084001ae46aa29ca791d2bc7f005c5c939646d2b800143526ab4d323" "f5eb916f6bd4e743206913e6f28051249de8ccfd070eae47b5bde31ee813d55f" "7e346cf2cb6a8324930c9f07ce050e9b7dfae5a315cd8ed3af6bcc94343f8402" "b2028956188cf668e27a130c027e7f240c24c705c1517108b98a9645644711d9" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "d44939ef462b7efb9bb5739f2dd50b03ac9ecf98c4df6578edcf145d6a2d188d" "3a69621a68c2d3550a4c777ffc000e1ea66f5bc2f61112814c591e1bda3f5704" "a5ce06f368dd82a9dade9261bccf5c30e2c7415a582bbd0a9337ea9f6af9e265" "b880872e60d1c7090fcd3d89f287d2a5681e57be9ac90d4682ea442149f5135f" "29b652383ce8b04163146f05f522d8f000ddd97173c9715d7416998278edecd8" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "e80932ca56b0f109f8545576531d3fc79487ca35a9a9693b62bf30d6d08c9aaf" "2a86b339554590eb681ecf866b64ce4814d58e6d093966b1bf5a184acf78874d" "c56d90af9285708041991bbc780a073182cbe91721de17c6e7a8aac1380336b3" "bc471c0ae74c789645639c9ccbaf2092bb00e56c97f9449198de86fe3722a6bc" "31a01668c84d03862a970c471edbd377b2430868eccf5e8a9aec6831f1a0908d" "e3c90203acbde2cf8016c6ba3f9c5300c97ddc63fcb78d84ca0a144d402eedc6" "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" "0ba649556dc51762e6794b92017f6f7406754ae3136eafef686d81c6da176cc5" "8022cea21aa4daca569aee5c1b875fbb3f3248a5debc6fc8cf5833f2936fbb22" "ae8d0f1f36460f3705b583970188e4fbb145805b7accce0adb41031d99bd2580" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "41b6698b5f9ab241ad6c30aea8c9f53d539e23ad4e3963abff4b57c0f8bf6730" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" "9bac44c2b4dfbb723906b8c491ec06801feb57aa60448d047dbfdbd1a8650897" "978ff9496928cc94639cb1084004bf64235c5c7fb0cfbcc38a3871eb95fa88f6" "53e29ea3d0251198924328fd943d6ead860e9f47af8d22f0b764d11168455a8e" default)))
 '(delete-old-versions (quote other))
 '(delete-selection-mode t)
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(electric-indent-mode nil)
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-pyvenv elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(elpy-rpc-python-command "python3")
 '(elpy-test-django-runner-command (quote ("django-admin.py" "test" "--noinput")))
 '(elpy-test-django-runner-manage-command (quote ("manage.py" "test" "--noinput")))
 '(elpy-test-django-with-manage t)
 '(elpy-test-runner (quote elpy-test-django-runner))
 '(exec-path-from-shell-arguments (quote ("-i" "-l")))
 '(exec-path-from-shell-check-startup-files nil)
 '(face-font-family-alternatives
   (quote
    (("Monospace" "courier" "fixed")
     ("courier" "CMU Typewriter Text" "fixed")
     ("Sans Serif" "helv" "helvetica" "arial" "fixed")
     ("helv" "helvetica" "arial" "fixed"))))
 '(fci-rule-color "#d6d6d6")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(flycheck-python-mypy-args
   (quote
    ("--ignore-missing-imports" "--disallow-untyped-defs")))
 '(flycheck-python-mypy-ini nil)
 '(font-lock-global-modes (quote (not speedbar-mode)))
 '(global-auto-revert-mode t)
 '(global-linum-mode t)
 '(go-oracle-command "/Users/etan/Development/go/bin/oracle" t)
 '(go-test-verbose t)
 '(helm-always-two-windows nil)
 '(helm-boring-file-regexp-list
   (quote
    ("\\.o$" "~$" "\\.bin$" "\\.lbin$" "\\.so$" "\\.a$" "\\.ln$" "\\.blg$" "\\.bbl$" "\\.elc$" "\\.lof$" "\\.glo$" "\\.idx$" "\\.lot$" "\\.svn$" "\\.hg$" "\\.git$" "\\.bzr$" "CVS$" "_darcs$" "_MTN$" "\\.fmt$" "\\.tfm$" "\\.class$" "\\.fas$" "\\.lib$" "\\.mem$" "\\.x86f$" "\\.sparcf$" "\\.dfsl$" "\\.pfsl$" "\\.d64fsl$" "\\.p64fsl$" "\\.lx64fsl$" "\\.lx32fsl$" "\\.dx64fsl$" "\\.dx32fsl$" "\\.fx64fsl$" "\\.fx32fsl$" "\\.sx64fsl$" "\\.sx32fsl$" "\\.wx64fsl$" "\\.wx32fsl$" "\\.fasl$" "\\.ufsl$" "\\.fsl$" "\\.dxl$" "\\.lo$" "\\.la$" "\\.gmo$" "\\.mo$" "\\.toc$" "\\.aux$" "\\.cp$" "\\.fn$" "\\.ky$" "\\.pg$" "\\.tp$" "\\.vr$" "\\.cps$" "\\.fns$" "\\.kys$" "\\.pgs$" "\\.tps$" "\\.vrs$" "\\.pyc$" "\\.pyo$" "\\.test$")))
 '(helm-grep-file-path-style (quote relative))
 '(helm-grep-truncate-lines nil)
 '(helm-split-window-default-side (quote other))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(hl-sexp-background-color "#efebe9")
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(js-indent-level 4)
 '(kill-ring-max 1000)
 '(leuven-scale-outline-headlines t)
 '(mac-command-modifier (quote super))
 '(mac-mouse-wheel-mode t)
 '(mac-option-modifier (quote meta))
 '(mouse-wheel-progressive-speed nil)
 '(neo-theme (quote icons))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(ns-function-modifier (quote hyper))
 '(olivetti-body-width 100)
 '(olivetti-hide-mode-line t)
 '(org-agenda-clockreport-parameter-plist (quote (:link t :maxlevel 3 :step day)))
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
 '(org-agenda-files
   (quote
    ("~/Dropbox/Org/Todo.org" "~/Dropbox/Org/Cedar.org")))
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday 0)
 '(org-agenda-start-with-log-mode t)
 '(org-capture-templates
   (quote
    (("t" "Task" entry
      (file+headline "~/Dropbox (Personal)/Org/Todo.org" "Tasks")
      "* TODO %?
  %u" :prepend t :empty-lines-after 1)
     ("p" "Personal" entry
      (file+headline "~/Dropbox (Personal)/Org/Todo.org" "Personal")
      "* TODO %?
  %u" :prepend t :empty-lines-after 1)
     ("w" "Work" entry
      (file+headline "~/Dropbox (Personal)/Org/Todo.org" "Work")
      "* TODO %?
  %u" :prepend t :empty-lines-after 1))))
 '(org-clock-clocked-in-display (quote mode-line))
 '(org-default-notes-file "~/Dropbox/Org/Notes.org")
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-reverse-note-order t)
 '(org-todo-keyword-faces
   (quote
    (("TODO" :foreground "medium blue")
     ("PROG" :foreground "goldenrod"))))
 '(org-todo-keywords (quote ((sequence "TODO" "PROG" "DONE"))))
 '(package-selected-packages
   (quote
    (go-guru prettier-js tide flycheck-mypy py-yapf py-autopep8 rjsx-mode docker gitattributes-mode gitconfig-mode gitignore-mode helm-ag leuven-theme info+ spaceline spaceline-all-the-icons spacemacs-theme color-theme-sanityinc-solarized color-theme-sanityinc-tomorrow all-the-icons elpy zoom-frm zenburn-theme yasnippet yaml-mode window-number window+ web-mode warm-night-theme use-package unicode-fonts textmate spacegray-theme soft-stone-theme soft-morning-theme smex smartparens slim-mode sass-mode rvm rspec-mode robe rainbow-mode protobuf-mode popwin perspective paradox pallet org-plus-contrib org-jira org-gcal org-bullets olivetti oldlace-theme nyan-mode neotree multiple-cursors miniedit markdown-mode magit load-theme-buffer-local linum-off json-mode jedi hideshowvis helm-swoop helm-projectile helm-ls-git helm-git-grep handlebars-mode greymatters-theme gotest go-stacktracer go-projectile go-autocomplete flycheck-cask flatui-theme fill-column-indicator face-remap+ expand-region exec-path-from-shell evil drag-stuff cus-edit+ company-inf-ruby company-go color-theme-solarized coffee-mode calfw base16-theme aggressive-indent ag ace-window)))
 '(paradox-github-token t)
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(popwin-mode t)
 '(popwin:special-display-config
   (quote
    (("*Miniedit Help*" :noselect t)
     (help-mode)
     (completion-list-mode :noselect t)
     (compilation-mode :noselect t)
     (grep-mode :noselect t)
     (occur-mode :noselect t)
     ("*Pp Macroexpand Output*" :noselect t)
     ("*Shell Command Output*")
     ("*vc-diff*")
     ("*vc-change-log*")
     (" *undo-tree*" :width 60 :position right)
     ("^\\*anything.*\\*$" :regexp t)
     ("*slime-apropos*")
     ("*slime-macroexpansion*")
     ("*slime-description*")
     ("*slime-compilation*" :noselect t)
     ("*slime-xref*")
     (sldb-mode :stick t)
     (slime-repl-mode)
     (slime-connection-list-mode)
     ("*Go Test*" :regexp nil))))
 '(powerline-default-separator (quote slant))
 '(powerline-text-scale-factor nil)
 '(prettier-js-args
   (quote
    ("\"--trailing-comma\" \"all\"" "\"--single-quote\"")))
 '(python-shell-interpreter "python3")
 '(rspec-use-rvm t)
 '(scalable-fonts-allowed t)
 '(scroll-bar-mode nil)
 '(scroll-step 0)
 '(show-paren-mode t)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(spaceline-all-the-icons-clock-always-visible nil)
 '(tool-bar-mode nil)
 '(typescript-indent-level 2)
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
 '(vc-display-status t)
 '(vc-make-backup-files t)
 '(version-control t)
 '(web-mode-attr-indent-offset nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-engine-detection t)
 '(web-mode-markup-indent-offset 2)
 '(when (not (facep (aref ansi-term-color-vector 0))))
 '(window-number-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight thin :height 100 :width condensed :foundry "nil" :family "Input Mono Narrow"))))
 '(go-test--warning-face ((t (:foreground "goldenrod1"))))
 '(helm-buffer-directory ((t (:foreground "#2492DB" :weight thin))))
 '(helm-ff-directory ((t (:foreground "#2492DB" :weight thin))))
 '(helm-selection ((t (:background "#7F8C8D" :foreground "#2C3E50" :underline nil))))
 '(helm-selection-line ((t (:background "#7F8C8D" :foreground "#2C3E50"))))
 '(helm-source-header ((t (:background "#abd7f0" :foreground "black" :weight bold :height 1.3 :family "Input Sans Narrow"))))
 '(web-mode-block-control-face ((t (:inherit font-lock-keyword-face)))))

;;; customize.el ends here
