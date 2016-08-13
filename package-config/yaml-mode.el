(use-package yaml-mode
  :ensure t
  :mode (("\\.yml" . yaml-mode))
  :config (progn
            (add-hook 'clojure-mode-hook #'smartparens-mode)))
