(use-package json-mode
  :ensure t
  :ensure smartparens
  :ensure rainbow-delimiters
  :ensure aggressive-indent
  :config (progn
            (add-hook 'json-mode-hook #'smartparens-mode)
            (add-hook 'json-mode-hook #'rainbow-delimiters-mode)
            (add-hook 'json-mode-hook #'aggressive-indent-mode)))
