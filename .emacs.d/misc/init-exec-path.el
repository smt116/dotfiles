(require 'init-packages)

;; macOS only
(require-package 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; load zsh profile
(exec-path-from-shell-initialize)

(provide 'init-exec-path)
