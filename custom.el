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
  (exec-path-from-shell-initialize))

;; no backups everywhere
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))
(setq backup-by-copying t)

;; Projectile
(projectile-global-mode)

;; Eshell, I love you
(defun eshell-throwaway () (interactive)
       (eshell (cdr (cdr (cdr (current-time))))))
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x M-m") 'eshell-throwaway)

(load-file "~/.emacs.d/martin/package-config/helm.el")

(load-file "~/.emacs.d/martin/package-config/smartparens.el")

;; remap C-a to `smarter-move-beginning-of-line'
(load-file "~/.emacs.d/martin/helper-functions/smarter-move-beginning-of-line.el")
(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)

