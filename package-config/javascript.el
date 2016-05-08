;; The language of love and hate
(use-package js2-mode
  :ensure t
  :ensure tern
  :config (progn (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
		 (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
		 (add-hook 'js2-mode-hook 'smartparens-mode)
		 (add-hook 'js2-mode-hook #'aggressive-indent-mode)
		 (add-hook 'js-mode-hook (lambda () (tern-mode t)))

		 (setq js2-basic-offset 2)
		 (set-variable 'indent-tabs-mode nil)))
