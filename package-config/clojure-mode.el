(use-package clojure-mode
  :ensure t
  :mode (("\\.edn$" . clojure-mode)
	 ("\\.boot$" . clojure-mode))
  :config (progn
	    (add-hook 'clojure-mode-hook 'smartparens-mode)))
