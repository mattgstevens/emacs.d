;; By Martin Josefsson 2016-06-29 in 恵比寿西. GNU GPL v3
(defun json-insert-object ()
  (interactive)
  (insert "{")
  (newline)
  (newline)
  (insert "}")
  (indent-for-tab-command)
  (previous-line)
  (insert "\"\"")
  (indent-for-tab-command)
  (forward-char))