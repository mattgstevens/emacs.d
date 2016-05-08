;; You're in good company
(add-hook 'after-init-hook 'global-company-mode)
(use-package company
  :ensure t
  :config (progn (setq company-idle-delay 0)
		 (define-key company-active-map (kbd "TAB") 'company-select-next)
		 (define-key company-active-map [tab] 'company-select-next)))
