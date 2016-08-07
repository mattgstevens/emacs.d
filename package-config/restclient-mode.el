(use-package restclient
  :ensure t
  :mode (("\\.http$" . restclient-mode))
  :config (progn
            (add-hook 'restclient-mode-hook
                      #'smartparens-mode)))
