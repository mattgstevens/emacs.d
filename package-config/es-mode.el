(use-package es-mode
  :ensure t
  :config (progn (add-to-list 'load-path "/path/to/es-mode-dir")
                 (autoload 'es-mode "es-mode.el"
                   "Major mode for editing Elasticsearch queries" t)
                 (add-to-list 'auto-mode-alist '("\\.es$" . es-mode))

                 (add-hook 'es-mode-hook #'smartparens-mode)
                 (add-hook 'es-mode-hook #'aggressive-indent-mode)

                 (add-hook 'es-mode-hook (global-set-key (kbd "s-{") #'json-insert-object))

                 (setq es-always-pretty-print t)))
