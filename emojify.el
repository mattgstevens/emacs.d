(use-package emojify
  :ensure t
  :config (progn
            (add-hook 'after-init-hook #'global-emojify-mode)))
