;;make script that quits emacs when errors are thrown
;; condition-case
;; instead, use error as the catch-all condition name.

;; Melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; spaces rock
(setq indent-tabs-mode nil)

;; no shitty splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; mac settings
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (tool-bar-mode -1)

  ;; Visible bell
  (setq visible-bell nil) ;; The default
  (setq ring-bell-function 'ignore)

  ;; bara lite mindre
  (scroll-bar-mode -1))

;; Autosave and backups go elsewhere
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

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

;; Better scrolling
(setq-default scroll-margin 1
	      scroll-conservatively 0
	      scroll-up-aggressively 0.01
	      scroll-down-aggressively 0.01)


;; Kill ring on M-y
(global-set-key (kbd "M-y") #'helm-show-kill-ring)

;; Regexp for search
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; FInal newline
(setq require-final-newline t)
