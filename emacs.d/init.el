(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#bf616a" "#B4EB89" "#ebcb8b" "#89AAEB" "#C189EB" "#89EBCA" "#232830"))
 '(autopair-global-mode t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(column-number-mode t)
 '(custom-enabled-themes (quote (base16-default)))
 '(custom-safe-themes
   (quote
    ("ae8d0f1f36460f3705b583970188e4fbb145805b7accce0adb41031d99bd2580" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "41b6698b5f9ab241ad6c30aea8c9f53d539e23ad4e3963abff4b57c0f8bf6730" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" "9bac44c2b4dfbb723906b8c491ec06801feb57aa60448d047dbfdbd1a8650897" "978ff9496928cc94639cb1084004bf64235c5c7fb0cfbcc38a3871eb95fa88f6" "53e29ea3d0251198924328fd943d6ead860e9f47af8d22f0b764d11168455a8e" default)))
 '(custom-theme-load-path
   (quote
    ("/Users/etan/.emacs.d/elpa/base16-theme-20130413.1655/" "/Users/etan/.emacs.d/elpa/spacegray-theme-20131230.1127/" custom-theme-directory t)))
 '(delete-old-versions (quote other))
 '(delete-selection-mode t)
 '(fci-rule-color "#343d46")
 '(fringe-mode 0 nil (fringe))
 '(global-auto-revert-mode t)
 '(global-linum-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(js-indent-level 2)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#bf616a")
     (40 . "#DCA432")
     (60 . "#ebcb8b")
     (80 . "#B4EB89")
     (100 . "#89EBCA")
     (120 . "#89AAEB")
     (140 . "#C189EB")
     (160 . "#bf616a")
     (180 . "#DCA432")
     (200 . "#ebcb8b")
     (220 . "#B4EB89")
     (240 . "#89EBCA")
     (260 . "#89AAEB")
     (280 . "#C189EB")
     (300 . "#bf616a")
     (320 . "#DCA432")
     (340 . "#ebcb8b")
     (360 . "#B4EB89"))))
 '(vc-annotate-very-old-color nil)
 '(vc-make-backup-files t)
 '(version-control t)
 '(window-number-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#202020" :foreground "#e0e0e0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 100 :width normal :foundry "nil" :family "Source Code Pro"))))
 '(bold ((t (:weight semi-bold))))
 '(bold-italic ((t (:slant italic :weight semi-bold))))
 '(error ((t (:foreground "Pink" :weight semi-bold))))
 '(helm-source-header ((t (:background "#22083397778B" :foreground "white" :weight semi-bold :height 1.3))))
 '(linum ((t (:background "#505050" :foreground "#e0e0e0"))))
 '(mode-line-buffer-id ((t (:weight semi-bold))))
 '(mode-line-emphasis ((t (:weight semi-bold))))
 '(success ((t (:foreground "Green1" :weight semi-bold))))
 '(tty-menu-enabled-face ((t (:background "blue" :foreground "yellow" :weight semi-bold))))
 '(warning ((t (:foreground "DarkOrange" :weight semi-bold)))))

;; ELPA package archives
(setq package-archives 
    '(("gnu" .
       "http://elpa.gnu.org/packages/")
      ("marmalade" .
       "https://marmalade-repo.org/packages/")
      ("melpa" .
       "http://melpa.milkbox.net/packages/")))

(defvar emacs-dir (file-name-directory load-file-name)
  "The root .emacs.d dir.")
(defvar personal-dir (expand-file-name "personal" emacs-dir)
  "User's custom configurations.")
(add-to-list 'load-path personal-dir)

(add-hook 'after-init-hook (lambda () (load (expand-file-name "after-init.el" emacs-dir))))
