(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(defun require-package (package)
  "Install a given PACKAGE if missing."
  (if (package-installed-p package)
      t
    (progn
      (unless (assoc package package-archive-contents)
        (package-refresh-contents))
      (package-install package))))

(package-initialize)

(provide 'init-packages)
