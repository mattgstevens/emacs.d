(use-package web-mode
  :ensure t
  :config (progn
            (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            (setq web-mode-enable-auto-pairing t)
            (setq web-mode-enable-current-column-highlight t)

            (add-hook 'web-mode-hook #'aggressive-indent-mode)))
