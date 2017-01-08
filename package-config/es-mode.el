(use-package es-mode
  :ensure t
  :mode "\\.es$"
  :bind ("s-{" . json-insert-object)
  :config (progn (add-to-list 'load-path "/path/to/es-mode-dir")
                 (autoload 'es-mode "es-mode.el"
                   "Major mode for editing Elasticsearch queries" t)

                 (add-hook 'es-mode-hook #'smartparens-mode)
                 (add-hook 'es-mode-hook #'aggressive-indent-mode)

                 (setq es-always-pretty-print t)))
