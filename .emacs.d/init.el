(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "misc" user-emacs-directory))

;; flycheck uses its own load-path which is empty by default. Inherit a default one
;; so it will be aware of misc.
(setq-default flycheck-emacs-lisp-load-path 'inherit)

(require 'init-packages)

(require 'init-lisp)
(require 'init-elixir)
(require 'init-elm)
(require 'init-purescript)
(require 'init-ruby)
(require 'init-rust)
(require 'init-typescript)
(require 'init-web)
(require 'init-docker)

(require 'init-exec-path)
(require 'init-ui)
(require 'init-editor)
(require 'init-backup)
(require 'init-completions)
(require 'init-flycheck)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:added-sign "+")
 '(git-gutter:deleted-sign "-")
 '(git-gutter:modified-sign "~"))
