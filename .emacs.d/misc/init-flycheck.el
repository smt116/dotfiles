;; flycheck bindings
(global-set-key (kbd "C-,") 'flycheck-next-error)

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init-flycheck)
