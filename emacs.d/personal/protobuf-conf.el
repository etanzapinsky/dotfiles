;; protobuf mode
;;  fork protobuf-mode.el to place style control in the Languages menu
(defconst my-protobuf-style
  '((c-basic-offset . 2)
    (indent-tabs-mode . nil)))
(add-hook 'protobuf-mode-hook
          (lambda () (c-add-style "my-style" my-protobuf-style t)))

(provide 'protobuf-conf)
