(require 'init-packages)

(require-package 'add-node-modules-path)
(require-package 'coffee-mode)
(require-package 'company)
(require-package 'company-web)
(require-package 'flycheck)
(require-package 'jade-mode)
(require-package 'js2-mode)
(require-package 'json-mode)
(require-package 'markdown-mode)
(require-package 'prettier-js)
(require-package 'sass-mode)
(require-package 'scss-mode)
(require-package 'slim-mode)
(require-package 'web-mode)
(require-package 'yaml-mode)

(require 'add-node-modules-path)
(require 'coffee-mode)
(require 'company)
(require 'company-web)
(require 'flycheck)
(require 'jade-mode)
(require 'js2-mode)
(require 'json-mode)
(require 'markdown-mode)
(require 'prettier-js)
(require 'sass-mode)
(require 'scss-mode)
(require 'slim-mode)
(require 'web-mode)
(require 'yaml-mode)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))

(eval-after-load 'web-mode
  '(progn
     (add-hook 'web-mode-hook #'add-node-modules-path)
     (add-hook 'web-mode-hook #'prettier-js-mode)))

(eval-after-load 'js2-mode
  '(progn
     (add-hook 'js2-mode-hook #'add-node-modules-path)
     (add-hook 'js2-mode-hook #'prettier-js-mode)))

;; disable flycheck warnings about missing semi colon at the end of the line
(setq js2-strict-missing-semi-warning nil)

;; indentation
(setq css-indent-offset standard-indent)
(setq js2-basic-offset standard-indent)
(setq web-mode-code-indent-offset standard-indent)
(setq web-mode-css-indent-offset standard-indent)
(setq web-mode-markup-indent-offset standard-indent)
(setq web-mode-sql-indent-offset standard-indent)

(provide 'init-web)
