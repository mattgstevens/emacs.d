(defun indent-buffer ()
  "Indent current buffer according to major mode."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun get-rust-sources ()
  (interactive)
  (if (= 1 (shell-command "cd ~/.emacs.d/rust/src && ls"))
      (progn (shell-command "cd ~/.emacs.d/ && git clone https://github.com/rust-lang/rust.git")
             (get-rust-sources))
    (shell-command "cd ~/.emacs.d/rust/src && git pull")))

;; You need to install the cargo binaries
;; * rustfmt
;; * racer

;; You also need to run (get-rust-sources)
(use-package rust-mode
  :ensure t
  :ensure racer
  :ensure company
  :ensure rainbow-delimiters
  :ensure cargo
  :ensure aggressive-indent
  :ensure smartparens
  :ensure flycheck
  :ensure flycheck-rust
  :init (progn
          (setq racer-rust-src-path "~/.emacs.d/rust/src")
          (add-hook 'rust-mode-hook #'racer-mode)
          (add-hook 'racer-mode-hook #'eldoc-mode)
          (add-hook 'racer-mode-hook #'company-mode)
          (setq company-tooltip-align-annotations t)

          (add-hook 'rust-mode-hook #'rainbow-delimiters-mode)

          (add-hook 'rust-mode-hook #'cargo-minor-mode)

          (add-hook 'rust-mode-hook #'aggressive-indent-mode)
          (add-hook 'rust-mode-hook #'smartparens-mode)

          (rust-enable-format-on-save)

          (add-hook 'rust-mode-hook #'flycheck-mode)
          (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))


