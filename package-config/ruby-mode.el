(use-package ruby-mode
  :ensure t
  :ensure inf-ruby
  :ensure company
  :ensure company-inf-ruby
  :mode "\\.rb\\'"
  :mode "Rakefile"
  :mode "Gemfile"
  :ensure aggressive-indent
  :config (progn
            (add-hook 'ruby-mode-hook #'aggressive-indent-mode)
            (eval-after-load 'company
              '(add-to-list 'company-backends 'company-inf-ruby))))
