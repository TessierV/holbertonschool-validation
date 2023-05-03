HUGO_EXECUTABLE := hugo

build:
	$(HUGO_EXECUTABLE)

clean:
	rm -Rf dist/*

post:
	$(HUGO_EXECUTABLE) new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	sed -i 's/draft: true/draft: false/' content/posts/$(POST_NAME).md

