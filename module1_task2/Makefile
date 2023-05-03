## executable variable
HUGO_EXECUTABLE := hugo

help: ## command help
	cat Makefile | grep '##' | tr -d '##' | head -n -1

build: ## build files
	$(HUGO_EXECUTABLE)

clean: ## remove all file force ignore nonexistent files
	rm -Rf dist/*

post: ## create new post
	$(HUGO_EXECUTABLE) new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md