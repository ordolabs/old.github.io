define HELP_MESSAGE
Usage: make [COMMAND]

Commands:
	help     Display this help message.
endef

export HELP_MESSAGE

PWD := $(shell pwd)

.PHONY: serve

serve:
	docker run -it --rm --label=jekyll --volume=$(PWD):/srv/jekyll -p 127.0.0.1:4000:4000 jekyll/jekyll:pages jekyll serve
