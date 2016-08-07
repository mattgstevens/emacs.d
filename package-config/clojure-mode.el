(defun kill-cider-buffers ()
  (interactive)
  (kill-matching-buffers "cider")
  (kill-matching-buffers "nrepl"))

(defun cider-debugger-panic!!! ()
  (interactive)
  (cider-interactive-eval "(boot.core/load-data-readers!)"))

(use-package clojure-mode
  :ensure t
  :ensure cider
  :ensure smartparens
  :ensure rainbow-delimiters
  :ensure aggressive-indent
  :ensure eldoc
  :ensure clojure-snippets

  :mode (("\\.edn$" . clojure-mode)
	 ("\\.boot$" . clojure-mode))
  :config (progn
	    (add-hook 'clojure-mode-hook #'smartparens-mode)
	    (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
            (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
            (add-hook 'clojure-mode-hook #'eldoc-mode)

            (add-hook 'clojure-mode-hook #'cider-auto-test-mode)))
