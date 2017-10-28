(defun run-current-file ()
  (interactive)
  (shell-command (buffer-file-name)))
