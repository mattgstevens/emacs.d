(use-package clojure-mode
  :ensure t
  :ensure cider
  :mode (("\\.edn$" . clojure-mode)
	 ("\\.boot$" . clojure-mode))
  :config (progn
	    (add-hook 'clojure-mode-hook #'smartparens-mode)
	    (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
            (add-hook 'clojure-mode-hook #'eldoc-mode)))
