(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode "\\.md\\'"
  :mode "\\.markdown\\'"
  :init (setq markdown-command "multimarkdown"))
