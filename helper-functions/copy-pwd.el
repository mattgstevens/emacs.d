(defun copy-pwd-to-kill-ring ()
  (interactive)
  (kill-new default-directory))

(defun copy-file-path-to-kill-ring ()
  (interactive)
  (kill-new
   (concat default-directory (buffer-name))))

(defun copy-file-name-to-kill-ring ()
  (interactive)
  (kill-new (buffer-name)))
