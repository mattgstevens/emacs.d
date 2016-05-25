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
  :mode (("\\.edn$" . clojure-mode)
	 ("\\.boot$" . clojure-mode))
  :config (progn
	    (add-hook 'clojure-mode-hook #'smartparens-mode)
	    (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
            (add-hook 'clojure-mode-hook #'eldoc-mode)))
