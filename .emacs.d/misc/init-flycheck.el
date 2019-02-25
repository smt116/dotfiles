;; flycheck bindings
(global-set-key (kbd "C-,") 'flycheck-first-error)

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init-flycheck)
