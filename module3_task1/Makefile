DESTDIR=dist
HUGO_EXECUTABLE := hugo

help: ## command help
	fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build: ## build files
	curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz -o hugo.tar.gz
	tar -xvf hugo.tar.gz hugo
	rm hugo.tar.gz
	mv hugo $(DESTDIR)/hugo
	make check && $(DESTDIR)/hugo -c $(DESTDIR)/*

clean: ## remove all file force ignore nonexistent files
	rm -Rf $(DESTDIR)/*

post: ## create new post with POST_NAME ans POST_TITLE given
	hugo new posts/$(POST_NAME).md
	sed -i 's|title:.*|title: "$(POST_TITLE)"|' content/posts/$(POST_NAME).md