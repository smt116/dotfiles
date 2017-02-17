(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; load zsh profile
(exec-path-from-shell-initialize)

;; open always in the same frame
(setq ns-pop-up-frames nil)

;; do not require full yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; unicode for term mode
(set-terminal-coding-system 'utf-8-unix)

;; enable auto complete
(ac-config-default)

;; prevent from adding coding header to ruby files
(setq ruby-insert-encoding-magic-comment nil)

;; enable line numbers
(global-linum-mode t)
(setq linum-format "%3d ")

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

;; append new line at the end of file if not present
(setq require-final-newline t)

;; cursor
(setq default-cursor-type 'bar)
(blink-cursor-mode t)

;; show cursor position in the bottom bar
(column-number-mode t)

;; disable backup files aka foo~
(setq make-backup-files nil)

;; disable auto-save files aka .#foo
(setq auto-save-default nil)

;; reload buffer from file automatically
(global-auto-revert-mode)

;; solarized theme
(load-theme 'solarized-dark t)

;; font
(set-frame-font "Monaco 13" nil t)
(add-to-list 'default-frame-alist
             '(font . "Monaco 13"))

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
  (when (member (buffer-name) '("*Completions*" "*Messages*" "*Help*"))
    (next-buffer)))

(ad-activate 'next-buffer)

(defadvice previous-buffer (after avoid-messages-buffer-in-previous-buffer)
  "Advice around `previous-buffer' to avoid going into internal buffer."
  (when (member (buffer-name) '("*Completions*" "*Messages*" "*Help*"))
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

;; TypeScript
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-web yaml-mode xterm-color tide solarized-theme slim-mode scss-mode sass-mode rinari markdown-mode json-mode jade-mode go-mode exec-path-from-shell erlang enh-ruby-mode elixir-mode dockerfile-mode company coffee-mode auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
