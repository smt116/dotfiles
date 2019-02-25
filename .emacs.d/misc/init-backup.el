;; when opening a file, move the cursor to the last place it was
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))

;; backup files in ~/.emacs.d/backups
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))

;; disable auto-save files aka .#foo
(setq auto-save-default nil)

;; reload buffer from file automatically
(global-auto-revert-mode)

;; No need for ~ files when editing
(setq create-lockfiles nil)

(provide 'init-backup)
