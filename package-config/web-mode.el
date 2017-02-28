(use-package web-mode
  :ensure t
  :ensure smartparens
  :ensure rainbow-delimiters
  :ensure aggressive-indent

  :mode "\\.html?\\'"
  :mode "\\html.erb\\'"
  :mode "\\.jsx?"
  :mode "\\.css\\'"
  :mode "\\.scss\\'"
  :init (progn
          (setq web-mode-markup-indent-offset 2)
          (setq web-mode-css-indent-offset 2)
          (setq web-mode-code-indent-offset 2)
          (setq web-mode-enable-auto-pairing t)
          (setq web-mode-enable-current-column-highlight t)

          (add-hook 'web-mode-hook #'aggressive-indent-mode)
          (add-hook 'web-mode-hook #'rainbow-delimiters-mode)
          (add-hook 'web-mode-hook #'smartparens-mode)))
