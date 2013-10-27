;;; jedi-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (jedi:setup anything-jedi-related-names helm-jedi-related-names
;;;;;;  jedi:ac-setup jedi:complete jedi:start-dedicated-server)
;;;;;;  "../../../dotfiles/emacs.d/elpa/jedi-0.1.2/jedi" "jedi.el"
;;;;;;  "f38d693426ddf882d5b8bf9367c32500")
;;; Generated autoloads from jedi.el

(autoload 'jedi:start-dedicated-server "../../../dotfiles/emacs.d/elpa/jedi-0.1.2/jedi" "\
Start Jedi server dedicated to this buffer.
This is useful, for example, when you want to use different
`sys.path' for some buffer.  When invoked as an interactive
command, it asks you how to start the Jedi server.  You can edit
the command in minibuffer to specify the way Jedi server run.

If you want to setup how Jedi server is started programmatically
per-buffer/per-project basis, make `jedi:server-command' and
`jedi:server-args' buffer local and set it in `python-mode-hook'.
See also: `jedi:server-args'.

\(fn COMMAND)" t nil)

(autoload 'jedi:complete "../../../dotfiles/emacs.d/elpa/jedi-0.1.2/jedi" "\
Complete code at point.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:ac-setup "../../../dotfiles/emacs.d/elpa/jedi-0.1.2/jedi" "\
Add Jedi AC sources to `ac-sources'.

\(fn)" t nil)

(autoload 'helm-jedi-related-names "../../../dotfiles/emacs.d/elpa/jedi-0.1.2/jedi" "\
Find related names of the object at point using `helm' interface.

\(fn)" t nil)

(autoload 'anything-jedi-related-names "../../../dotfiles/emacs.d/elpa/jedi-0.1.2/jedi" "\
Find related names of the object at point using `anything' interface.

\(fn)" t nil)

(autoload 'jedi:setup "../../../dotfiles/emacs.d/elpa/jedi-0.1.2/jedi" "\
Fully setup jedi.el for current buffer.
It setups `ac-sources' (calls `jedi:ac-setup') and turns
`jedi-mode' on.

This function is intended to be called from `python-mode-hook',
like this::

       (add-hook 'python-mode-hook 'jedi:setup)

You can also call this function as a command, to quickly test
what jedi can do.

\(fn)" t nil)

;;;***

;;;### (autoloads (jedi:setup anything-jedi-related-names helm-jedi-related-names
;;;;;;  jedi:ac-setup jedi:complete jedi:start-dedicated-server)
;;;;;;  "jedi" "../../../../.emacs.d/elpa/jedi-0.1.2/jedi.el" "f38d693426ddf882d5b8bf9367c32500")
;;; Generated autoloads from ../../../../.emacs.d/elpa/jedi-0.1.2/jedi.el

(autoload 'jedi:start-dedicated-server "jedi" "\
Start Jedi server dedicated to this buffer.
This is useful, for example, when you want to use different
`sys.path' for some buffer.  When invoked as an interactive
command, it asks you how to start the Jedi server.  You can edit
the command in minibuffer to specify the way Jedi server run.

If you want to setup how Jedi server is started programmatically
per-buffer/per-project basis, make `jedi:server-command' and
`jedi:server-args' buffer local and set it in `python-mode-hook'.
See also: `jedi:server-args'.

\(fn COMMAND)" t nil)

(autoload 'jedi:complete "jedi" "\
Complete code at point.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:ac-setup "jedi" "\
Add Jedi AC sources to `ac-sources'.

\(fn)" t nil)

(autoload 'helm-jedi-related-names "jedi" "\
Find related names of the object at point using `helm' interface.

\(fn)" t nil)

(autoload 'anything-jedi-related-names "jedi" "\
Find related names of the object at point using `anything' interface.

\(fn)" t nil)

(autoload 'jedi:setup "jedi" "\
Fully setup jedi.el for current buffer.
It setups `ac-sources' (calls `jedi:ac-setup') and turns
`jedi-mode' on.

This function is intended to be called from `python-mode-hook',
like this::

       (add-hook 'python-mode-hook 'jedi:setup)

You can also call this function as a command, to quickly test
what jedi can do.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/jedi-0.1.2/jedi-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/jedi-0.1.2/jedi-pkg.el" "../../../../.emacs.d/elpa/jedi-0.1.2/jedi.el"
;;;;;;  "../../../../.emacs.d/elpa/jedi-0.1.2/tryout-jedi.el" "jedi.el")
;;;;;;  (21085 25662 412270))

;;;***

(provide 'jedi-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; jedi-autoloads.el ends here
