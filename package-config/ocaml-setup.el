;; ML hacking
(use-package tuareg
  :ensure t
  :ensure merlin
  :ensure smartparens
  :ensure aggressive-indent
  :mode ("\\.ml$" . tuareg-mode)
  :init (progn
          (add-hook 'tuareg-mode-hook 'smartparens-mode)
          (add-hook 'tuareg-mode-hook 'aggressive-indent-mode)))
