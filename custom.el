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

;; Helm all the things
(require 'helm)
(require 'helm-config)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(require 'helm-projectile)
(helm-projectile-on)

;; Smartparens
(use-package smartparens-config
  :ensure smartparens
  :config (progn
	    (show-smartparens-global-mode t)
	    (turn-on-smartparens-strict-mode)
	    (bind-keys
	     :map smartparens-mode-map
	     ("C-M-a" . sp-beginning-of-sexp)
	     ("C-M-e" . sp-end-of-sexp)

	     ("C-<down>" . sp-down-sexp)
	     ("C-<up>"   . sp-up-sexp)
	     ("M-<down>" . sp-backward-down-sexp)
	     ("M-<up>"   . sp-backward-up-sexp)

	     ("C-M-f" . sp-forward-sexp)
	     ("C-M-b" . sp-backward-sexp)

	     ("C-M-n" . sp-next-sexp)
	     ("C-M-p" . sp-previous-sexp)

	     ("C-S-f" . sp-forward-symbol)
	     ("C-S-b" . sp-backward-symbol)

	     ("C-<right>" . sp-forward-slurp-sexp)
	     ("M-<right>" . sp-forward-barf-sexp)
	     ("C-<left>"  . sp-backward-slurp-sexp)
	     ("M-<left>"  . sp-backward-barf-sexp)

	     ("C-M-t" . sp-transpose-sexp)
	     ("C-M-k" . sp-kill-sexp)
	     ("C-k"   . sp-kill-hybrid-sexp)
	     ("M-k"   . sp-backward-kill-sexp)
	     ("C-M-w" . sp-copy-sexp)

	     ("C-M-d" . delete-sexp)

	     ("M-<backspace>" . backward-kill-word)
	     ("C-<backspace>" . sp-backward-kill-word)
	     ([remap sp-backward-kill-word] . backward-kill-word)

	     ("M-[" . sp-backward-unwrap-sexp)
	     ("M-]" . sp-unwrap-sexp)

	     ("C-x C-t" . sp-transpose-hybrid-sexp)

	     ("C-c ("  . wrap-with-parens)
	     ("C-c ["  . wrap-with-brackets)
	     ("C-c {"  . wrap-with-braces)
	     ("C-c '"  . wrap-with-single-quotes)
	     ("C-c \"" . wrap-with-double-quotes)
	     ("C-c _"  . wrap-with-underscores)
	     ("C-c `"  . wrap-with-back-quotes))))

;; remap C-a to `smarter-move-beginning-of-line'
(load-file "~/.emacs.d/martin/helper-functions/smarter-move-beginning-of-line.el")
(global-set-key [remap move-beginning-of-line]
                'smarter-move-beginning-of-line)

