(use-package cc-mode
  :ensure t
  :ensure smartparens
  :ensure aggressive-indent
  :ensure rainbow-delimiters
  :defer t
  :init (progn
          (add-hook 'c-mode-hook #'smartparens-mode)
          (add-hook 'c-mode-hook #'aggressive-indent-mode)
          (add-hook 'c-mode-hook #'rainbow-delimiters-mode)))
