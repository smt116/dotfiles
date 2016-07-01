(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; enable line numbers
(global-linum-mode t)
(setq linum-format "%3d ")

;; white spaces
(require 'whitespace)
(setq whitespace-line-column 120)
(setq whitespace-action '(auto-cleanup))
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;; show cursor position in the bottom bar
(column-number-mode t)

;; backup files aka foo~ and #foo# in the ~/.emacs.d/backups directory
(defvar --backup-directory (expand-file-name(concat user-emacs-directory "backups")))
(setq backup-directory-alist `(("." . ,--backup-directory)))
(setq auto-save-file-name-transforms `((".*" ,--backup-directory)))
(setq auto-save-list-file-prefix `((".*" ,--backup-directory)))
(setq make-backup-files t               ; backup of a file the first time it is saved.
      backup-by-copying t               ; don't clobber symlinks
      version-control t                 ; version numbers for backup files
      delete-old-versions t             ; delete excess backup files silently
      delete-by-moving-to-trash t
      kept-old-versions 4               ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 8               ; newest versions to keep when a new numbered backup is made (default: 2)
      auto-save-default t               ; auto-save every buffer that visits a file
      auto-save-timeout 8               ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 60             ; number of keystrokes between auto-saves (default: 300)
      )
(setq auto-mode-alist
      (append
       (list
        '("\\.\\(vcf\\|gpg\\)$" . sensitive-minor-mode)
        )
       auto-mode-alist))

;; reload buffer from file automatically
(global-auto-revert-mode)

;; append new line at the end of file if not present
(setq require-final-newline t)

;; always use spacebars instead of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default js-indent-level 2)
(setq-default json-ident-level 2)
(setq-default erlang-ident-level 2)

;; solarized theme
;;(setq solarized-high-contrast-mode-line t)
(load-theme 'solarized-dark t)

;; ctrl+a -> move to beginning of text
(defun beginning-of-line-or-indentation ()
  "Move point to the beginning of text on the current line; if that is already the current position of point, then move it to the beginning of the line."
  (interactive)
  (let ((pt (point)))
    (back-to-indentation)
    (when (eq pt (point))
      (beginning-of-line))))

(global-set-key (kbd "C-a") 'beginning-of-line-or-indentation)

;; open always in the same frame
(setq ns-pop-up-frames nil)

;; do not require full yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; slim templates
(require 'slim-mode)

;; font
(set-frame-font "Monaco 13" nil t)
(add-to-list 'default-frame-alist
             '(font . "Monaco 13"))

;; cursor
(setq default-cursor-type 'bar)
(blink-cursor-mode t)
