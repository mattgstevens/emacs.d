;; Search and thou will find
(use-package engine-mode
  :ensure t
  :config (progn
	    (engine-mode)
	    (defengine amazon
	      "https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=%s")
	    (defengine duckduckgo
	      "httpss://duckduckgo.com/?q=%s"
	      :keybinding "d")
	    (defengine github
	      "httpss://github.com/search?ref=simplesearch&q=%s")
	    (defengine google
	      "https://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
	      :keybinding "g")
	    (defengine google-images
	      "https://www.google.com/images?hl=en&source=hp&biw=1440&bih=795&gbv=2&aq=f&aqi=&aql=&oq=&q=%s")
	    (defengine google-maps
	      "https://maps.google.com/maps?q=%s"
	      :docstring "Mappin' it up.")
	    (defengine project-gutenberg
	      "https://www.gutenberg.org/ebooks/search/?query=%s")
	    (defengine rfcs
	      "https://pretty-rfc.herokuapp.com/search?q=%s")
	    (defengine stack-overflow
	      "httpss://stackoverflow.com/search?q=%s")
	    (defengine twitter
	      "httpss://twitter.com/search?q=%s")
	    (defengine wikipedia
	      "https://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
	      :keybinding "w"
	      :docstring "Searchin' the wikis.")
	    (defengine wiktionary
	      "httpss://www.wikipedia.org/search-redirect.php?family=wiktionary&language=en&go=Go&search=%s")
	    (defengine wolfram-alpha
	      "https://www.wolframalpha.com/input/?i=%s")
	    (defengine youtube
	      "https://www.youtube.com/results?aq=f&oq=&search_query=%s")

	    (engine/set-keymap-prefix (kbd "C-c /"))))
