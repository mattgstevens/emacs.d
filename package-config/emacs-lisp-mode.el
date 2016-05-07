(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

(add-hook 'emacs-lisp-mode-hook
	  (lambda () (define-key emacs-lisp-mode-map (kbd "C-c C-c") 'eval-defun)))

(defun save-file-and-eval-it-all () (interactive)
       (save-buffer))

(add-hook 'emacs-lisp-mode-hook
	  (lambda () (define-key emacs-lisp-mode-map (kbd "C-c C-k") 'save-file-and-eval-it-all)))
