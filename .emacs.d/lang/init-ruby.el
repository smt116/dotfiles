(require 'init-packages)
(require-package 'enh-ruby-mode)

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))

;; prevent from adding coding header to ruby files
(setq ruby-insert-encoding-magic-comment nil)

;; FIXME
;; (flycheck-disable-checker 'ruby-rubocop)

(provide 'init-ruby)
