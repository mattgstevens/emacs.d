(defun tip-of-the-day () (interactive)
       (let ((tip-list '("Add more tips to list")))
	 (nth (random (length tip-list))
	      tip-list)))
