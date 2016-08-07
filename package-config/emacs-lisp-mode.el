(use-package lisp-mode
  :ensure aggressive-indent
  :ensure smartparens
  :config (progn (add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
                 (add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

                 (add-hook 'emacs-lisp-mode-hook
                           (lambda () (define-key emacs-lisp-mode-map (kbd "C-c C-c") 'eval-defun)))
                 (add-hook 'emacs-lisp-mode-hook
                           (lambda () (define-key emacs-lisp-mode-map (kbd "C-c C-k") 'save-file-and-eval-it-all)))

                 (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)))

(defun save-file-and-eval-it-all () (interactive)
       (save-buffer)
       (eval-buffer nil t))
