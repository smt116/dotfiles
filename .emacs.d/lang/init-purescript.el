(require 'init-packages)
(require-package 'company)
(require-package 'flycheck)
(require-package 'psc-ide)
(require-package 'purescript-mode)

(add-hook 'purescript-mode-hook
  (lambda ()
    (psc-ide-mode)
    (company-mode)
    (flycheck-mode)
    (turn-on-purescript-indentation)))

(provide 'init-purescript)
