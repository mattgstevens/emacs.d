(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile$" . dockerfile-mode)
  :config (progn
            (add-hook 'dockerfile-mode-hook #'smartparens-mode)))
