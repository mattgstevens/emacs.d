;; You're in good company
(add-hook 'after-init-hook 'global-company-mode)
(use-package company
  :config (progn (setq company-idle-delay 0)))
