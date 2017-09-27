.PHONY: build install serve

serve:
	bundle exec jekyll serve

build:
	bundle exec jekyll clean
	bundle exec jekyll build

install: build
	rsync -r -P --del --exclude /view --exclude /experiments _site/ gavento@ucw.cz:www/
