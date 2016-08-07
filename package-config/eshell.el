;; Eshell, I love you
(defun eshell-throwaway ()
  (interactive)
  (eshell (cdr (cdr (cdr (current-time))))))

(defun my-eshell ()
  (interactive)
  (if (projectile-project-p)
      (projectile-run-eshell)
    (eshell)))

(global-set-key (kbd "C-x m") #'my-eshell)
(global-set-key (kbd "C-x M-m") #'eshell-throwaway)

(defun eshell/vim (filename &optional wildcards)
  (if wildcards
      (find-file filename wildcards)
    (find-file filename)))

(defun eshell/emacs (filename &optional wildcards)
  (if wildcards
      (find-file filename wildcards)
    (find-file filename)))

(add-hook 'eshell-mode-hook (lambda () (company-mode -1)))
