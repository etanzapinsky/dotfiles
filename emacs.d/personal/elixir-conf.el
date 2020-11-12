;;; elixir-conf.el --- Config for elixir major mode
;; Author: Etan Zapinsky <etan.zapinsky@gmail.com>
;; Copyright (C) 2015 Etan Zapinsky
;; -*-no-byte-compile: t; -*-

;;; Commentary:

;;; History:

;;; Code:

(use-package lsp-mode
    :commands lsp
    :ensure t
    :diminish lsp-mode
    :hook
    (elixir-mode . lsp)
    :init
    (add-to-list 'exec-path (concat (file-name-directory (or load-file-name buffer-file-name)) "elixir-ls/")))

(add-to-list 'exec-path (concat (file-name-directory (or load-file-name buffer-file-name)) "elixir-ls/"))



;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode.
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

(add-hook 'elixir-mode-hook #'lsp)

(provide 'elixir-conf)

;;; go-conf.el ends here
