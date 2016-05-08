;; Helm all the things
(use-package helm
  :config (progn
	    (require 'helm-config)
	    (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
	    (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
	    (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
	    (when (executable-find "curl")
	      (setq helm-google-suggest-use-curl-p t))

	    (global-set-key (kbd "M-x") 'helm-M-x)
	    (global-set-key (kbd "C-x C-f") 'helm-find-files)
	    (global-set-key (kbd "C-x b") 'helm-buffers-list)
	    (require 'helm-projectile)
	    (helm-projectile-on)))
