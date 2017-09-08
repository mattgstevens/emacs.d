(use-package projectile
  :ensure t
  :config (progn
            (projectile-global-mode)
            (global-set-key (kbd "M-p") #'helm-projectile-find-file)))
