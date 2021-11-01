;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "misc" user-emacs-directory))

;; flycheck uses its own load-path which is empty by default. Inherit a default one
;; so it will be aware of misc.
(setq-default flycheck-emacs-lisp-load-path 'inherit)

(require 'init-packages)

(require 'init-exec-path)
(require 'init-ui)
(require 'init-editor)
(require 'init-backup)
(require 'init-completions)
(require 'init-flycheck)

(require 'init-docker)
(require 'init-elixir)
(require 'init-elm)
(require 'init-fish)
(require 'init-lisp)
(require 'init-purescript)
(require 'init-ruby)
(require 'init-typescript)
(require 'init-web)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default))
 '(git-gutter:added-sign "+")
 '(git-gutter:deleted-sign "-")
 '(git-gutter:modified-sign "~")
 '(package-selected-packages
   '(markdown-toc fish-mode erb-mode js2-mode prettier-js add-node-modules-path javascript-mode yaml-mode xterm-color web-mode tide solarized-theme slim-mode scss-mode sass-mode racer purescript-mode psc-ide markdown-mode json-mode jade-mode git-gutter flycheck-rust exec-path-from-shell erlang enh-ruby-mode elm-mode dockerfile-mode company-web coffee-mode auto-complete alchemist)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
