(require 'init-packages)

(require-package 'flycheck)

(require 'flycheck)

;; (with-eval-after-load 'flycheck
  ;; (lambda ()
    ;; (add-to-list 'flycheck-disabled-checkers 'emacs-lisp-checkdoc)))

;; (add-hook 'emacs-lisp-mode-hook
;;   (lambda ()
;;     (add-to-list 'flycheck-disabled-checkers 'emacs-lisp-checkdoc)))

;; (add-hook 'lisp-mode-hook
;;   (lambda ()
;;     (add-to-list 'flycheck-disabled-checkers 'emacs-lisp-checkdoc)))

(provide 'init-lisp)
