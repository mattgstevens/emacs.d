(use-package dockerfile-mode
  :ensure t
  :mode "^Dockerfile$"
  :config (progn
            (add-hook 'dockerfile-mode-hook #'smartparens-mode)))
