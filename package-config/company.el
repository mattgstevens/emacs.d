;; You're in good company
(use-package company
  :ensure t
  :ensure company-tern
  :config (progn (setq company-idle-delay 0)
		 (setq company-tooltip-align-annotations t)
		 (define-key company-active-map (kbd "TAB") 'company-select-next)
		 (define-key company-active-map [tab] 'company-select-next)

		 (add-to-list 'company-backends 'company-tern)))

(add-hook 'after-init-hook 'global-company-mode)
