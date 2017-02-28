(use-package elm-mode
  :ensure t
  :mode "\\.elm$"
  :config (progn
            (add-to-list 'company-backends 'company-elm)))
