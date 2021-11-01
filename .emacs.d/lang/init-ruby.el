(require 'init-packages)

(require-package 'enh-ruby-mode)
(require-package 'flycheck)

(require 'enh-ruby-mode)
(require 'flycheck)

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:\\.rb\\.rbi\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook
          (lambda ()
            (add-to-list 'flycheck-disabled-checkers 'ruby-rubocop)))

(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'flycheck-disabled-checkers 'ruby-rubocop)))

(provide 'init-ruby)
