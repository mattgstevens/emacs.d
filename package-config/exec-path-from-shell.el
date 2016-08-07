(use-package exec-path-from-shell
  :ensure t
  :config (when (memq window-system '(mac ns))
            (progn
              (exec-path-from-shell-initialize)
              (exec-path-from-shell-copy-env "PATH"))))
