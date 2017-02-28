;; You're in good company
(use-package company
  :ensure t
  :config (progn (setq company-idle-delay 0)
		 (define-key company-active-map (kbd "TAB") 'company-select-next)
		 (define-key company-active-map [tab] 'company-select-next)
                 (define-key company-active-map (kbd "S-TAB") 'company-select-previous)
		 (define-key company-active-map [backtab] 'company-select-previous)


                 (global-set-key (kbd "C-;") 'company-complete)
                 (define-key company-active-map (kbd "C-;") 'company-complete-selection)
                 (define-key company-active-map (kbd "<return>") 'newline)
                 (setq company-dabbrev-downcase nil)))

(add-hook 'after-init-hook 'global-company-mode)
