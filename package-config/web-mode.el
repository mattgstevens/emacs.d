(use-package web-mode
  :ensure t
  :ensure smartparens
  :ensure rainbow-delimiters
  ;; :ensure aggressive-indent
  :ensure prettier-js
  :ensure flycheck-flow

  :mode "\\.html?\\'"
  :mode "\\.json\\'"
  :mode "\\html.erb\\'"
  :mode "\\.jsx?"
  :mode "\\.css\\'"
  :mode "\\.scss\\'"
  :mode "\\.babelrc\\'"
  :config (progn

            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            (setq web-mode-enable-auto-pairing t)
            (setq web-mode-enable-current-column-highlight t)

            ;; (add-hook 'web-mode-hook #'aggressive-indent-mode)
            (add-hook 'web-mode-hook #'rainbow-delimiters-mode)
            (add-hook 'web-mode-hook #'smartparens-mode)

            (setq prettier-js-args '("--no-semi"))
            (add-hook 'web-mode-hook 'prettier-js-mode)

            (add-hook 'web-mode-hook #'linum-mode)

            (require 'flycheck-flow)
            (add-hook 'web-mode-hook 'flycheck-mode)
            (flycheck-add-mode 'javascript-flow 'web-mode)
            (flycheck-select-checker 'javascript-flow)))
