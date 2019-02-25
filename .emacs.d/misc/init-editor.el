(require 'init-packages)
(require-package 'git-gutter)

;; git status for lines
(global-git-gutter-mode t)

;; enable auto complete
(ac-config-default)

;; enable line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers "%3d ")

;; white spaces
(require 'whitespace)
(setq whitespace-line-column 120)
(setq whitespace-action '(auto-cleanup))
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;; always use spacebars instead of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq standard-indent tab-width)
(setq css-indent-offset tab-width)
(setq js-indent-level tab-width)
(setq typescript-indent-level tab-width)
(setq sh-basic-offset tab-width)

;; append new line at the end of file if not present
(setq require-final-newline t)

;; cursor
(set-default 'cursor-type 'bar)
(blink-cursor-mode t)

;; show cursor position in the bottom bar
(column-number-mode t)

;; show matching braces
(show-paren-mode t)
(setq show-paren-mode 'expression)

;; C-a to move to the beginning of text
(defun beginning-of-line-or-indentation ()
  "Move point to the beginning of text on the current line or to the beginning of the line"
  (interactive)
  (let ((pt (point)))
    (back-to-indentation)
    (when (eq pt (point))
      (beginning-of-line))))

(global-set-key (kbd "C-a") 'beginning-of-line-or-indentation)

;; skip internal buffers
(defadvice next-buffer (after avoid-messages-buffer-in-next-buffer)
  "Advice around `next-buffer' to avoid going into internal buffer."
  (when (member (buffer-name) '("*Completions*" "*Compile-Log*" "*Messages*" "*Help*" "*tide-server*" "*psc-ide-server*" "*vc*" "*Flycheck error messages*"))
    (next-buffer)))

(ad-activate 'next-buffer)

(defadvice previous-buffer (after avoid-messages-buffer-in-previous-buffer)
  "Advice around `previous-buffer' to avoid going into internal buffer."
  (when (member (buffer-name) '("*Completions*" "*Compile-Log*" "*Messages*" "*Help*" "*tide-server*" "*psc-ide-server*" "*vc*" "*Flycheck error messages*"))
    (previous-buffer)))

(ad-activate 'previous-buffer)

;; C-> / C-< to make or remove region indentation
(defun my-indent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N tab-width))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(defun my-unindent-region (N)
  (interactive "p")
  (if (use-region-p)
      (progn (indent-rigidly (region-beginning) (region-end) (* N (- tab-width)))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(global-set-key (kbd "C->") 'my-indent-region)
(global-set-key (kbd "C-<") 'my-unindent-region)

;; kill all buffers
(defun close-all-buffers ()
(interactive)
  (mapc 'kill-buffer (buffer-list)))

(provide 'init-editor)
