(use-package nix-mode
  :ensure t
  :mode "\\.nix$"
  :config (progn
	    (add-hook 'nix-mode-hook #'smartparens-mode)
	    (add-hook 'nix-mode-hook #'rainbow-delimiters-mode)))
