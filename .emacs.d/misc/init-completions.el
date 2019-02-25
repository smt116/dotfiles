(require 'init-packages)
(require-package 'auto-complete)
(require-package 'company)
(require 'company)

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; make company a default completion engine for all modes
(add-hook 'prog-mode-hook 'company-mode)

(provide 'init-completions)
