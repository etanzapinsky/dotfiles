;; Dont load personal ~/.ssh/config
(tramp-set-completion-function
 "ssh"
 '((tramp-parse-sconfig "/etc/ssh_config")
   ;; (tramp-parse-sconfig "~/.ssh/config")
   ))

(provide 'tramp-conf)
