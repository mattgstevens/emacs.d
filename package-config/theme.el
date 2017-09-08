(defun disable-all-themes ()
  "disable all active themes."
  (interactive)
  (dolist (i custom-enabled-themes)
    (disable-theme i)))

(disable-all-themes)

;; (use-package darkokai-theme
;;   :ensure t
;;   :config (load-theme 'darkokai t))

(use-package dracula-theme
  :ensure t
  :config (load-theme 'dracula t))

;; (use-package atom-one-dark-theme
;;   :ensure t
;;   :config (load-theme 'atom-one-dark t))
