(require 'init-packages)

(require-package 'solarized-theme)
(require-package 'xterm-color)

(setq inhibit-startup-message t
      select-enable-clipboard t
      select-enable-primary t)

;; open always in the same frame
(setq ns-pop-up-frames nil)

;; do not require full yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; unicode for term mode
(set-terminal-coding-system 'utf-8-unix)

;; solarized theme
(load-theme 'solarized-dark t)
;; (load-theme 'solarized-light t)
(scroll-bar-mode -1)

;; font
(set-frame-font "Monaco 11" nil t)
(add-to-list 'default-frame-alist
             '(font . "Monaco 11"))

;; windows switch
(global-set-key (kbd "C-x <up>") #'other-window)
(global-set-key (kbd "C-x <down>") #'previous-multiframe-window)

(provide 'init-ui)
