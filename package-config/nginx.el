(use-package nginx-mode
  :ensure t
  :ensure smartparens
  :ensure rainbow-delimiters
  :ensure aggressive-indent
  :config (progn
            (add-hook 'nginx-mode-hook #'smartparens-mode)
	    (add-hook 'nginx-mode-hook #'rainbow-delimiters-mode)
            (add-hook 'nginx-mode-hook #'aggressive-indent-mode)))
