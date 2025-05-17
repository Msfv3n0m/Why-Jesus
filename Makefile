default: install start
install:
	bundle install
start:
	bundle exec jekyll serve -s src
clean: 
	bundle exec jekyll clean