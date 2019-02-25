(require 'init-packages)
(require-package 'flycheck)

(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

(provide 'init-lisp)
