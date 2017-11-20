(use-package undo-tree
  :ensure t
  :config (progn
            (global-undo-tree-mode)
            (global-set-key (kbd "s-Z") 'undo-tree-redo)))
