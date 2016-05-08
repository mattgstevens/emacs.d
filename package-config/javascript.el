;; The language of love and hate

 (use-package js2-mode
   :config (progn (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
 		 (add-to-list 'interpreter-mode-alist '("node" . js2-mode))))
