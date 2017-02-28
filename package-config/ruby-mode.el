(use-package ruby-mode
  :ensure t
  :mode "\\.rb\\'"
  :mode "Rakefile"
  :mode "Gemfile"
  :ensure aggressive-indent
  :config (progn
            (add-hook 'ruby-mode-hook #'aggressive-indent-mode)))
