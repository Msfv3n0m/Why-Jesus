default: install start
install:
	bundle install
start:
	bundle exec jekyll serve -s docs
clean: 
	bundle exec jekyll clean