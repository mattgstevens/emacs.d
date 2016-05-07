;; Eshell, I love you
(defun eshell-throwaway () (interactive)
       (eshell (cdr (cdr (cdr (current-time))))))
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x M-m") 'eshell-throwaway)
