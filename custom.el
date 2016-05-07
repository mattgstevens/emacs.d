;; Melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; no shitty splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; mac settings
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (tool-bar-mode -1))

;; Autosave and backups go elsewhere
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; Projectile
(projectile-global-mode)

;; Eshell, I love you
(defun eshell-throwaway () (interactive)
       (eshell (cdr (cdr (cdr (current-time))))))
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x M-m") 'eshell-throwaway)

;; Load all package and mode configs
(mapcar 'load-file (split-string
		    (shell-command-to-string
		     "ls -rt -d -1 ~/.emacs.d/martin/package-config/*")))

;; Load all helper functions
(mapcar 'load-file (split-string
		    (shell-command-to-string
		     "ls -rt -d -1 ~/.emacs.d/martin/helper-functions/*")))

;; Put backups and auto-save in /tmp
(setq backup-directory-alist `((".*" . ,temporary-file-directory))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)

;; Delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
