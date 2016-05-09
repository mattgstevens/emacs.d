;; Eshell, I love you
(defun eshell-throwaway () (interactive)
       (martin-eshell (cdr (cdr (cdr (current-time))))))

(defun martin-eshell ()
  (interactive)
  (if (projectile-project-p)
      (projectile-run-eshell)
    (eshell)))

(global-set-key (kbd "C-x m") #'martin-eshell)
(global-set-key (kbd "C-x M-m") #'eshell-throwaway)
