#
# Clean/Compile Life-cycle
#
all: clean compile

clean:
	rm -rf _site

compile:
	bundle exec jekyll --no-server --no-safe --no-auto
	bundle exec compass compile -c compass_config.rb

runserver: clean compile
	bundle exec foreman start

.PHONY: all clean compile runserver

