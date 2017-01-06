(use-package yaml-mode
  :ensure t
  :mode "\\.yaml$"
  :mode "\\.yml$"
  :config (progn
            (add-hook 'clojure-mode-hook #'smartparens-mode)))
