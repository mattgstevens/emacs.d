(setq calendar-location-name "London, UK")

(setq calendar-longitude 51.32)
(setq calendar-latitude 0.5)

(use-package theme-changer
  :config (change-theme 'darkokai nil))

(defadvice load-theme
  (before theme-dont-propagate activate)
  (mapcar #'disable-theme custom-enabled-themes))
