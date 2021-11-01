(require 'init-packages)

(require-package 'company)
(require-package 'flycheck)
(require-package 'tide)

(require 'company)
(require 'flycheck)
(require 'tide)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'web-mode-hook #'setup-tide-mode)

(setq typescript-indent-level standard-indent)
(setq tide-format-options '(:indentSize 2 :tabSize 2 :insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces t))

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (eldoc-mode +1)
  (company-mode +1))

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . web-mode))
(add-hook 'web-mode-hook 'setup-tide-mode)
;; (add-hook 'web-mode-hook
          ;; (lambda ()
            ;; (when (string-equal "tsx" (file-name-extension buffer-file-name))
              ;; (setup-tide-mode))))

(provide 'init-typescript)
