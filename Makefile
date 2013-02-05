#
# Clean/Compile Life-cycle
#

all: clean compile


clean:
	rm -rf _site


compile:
	bundle exec jekyll --no-server --no-safe --no-auto
	bundle exec compass compile -c compass.rb


runserver: clean
	bundle exec foreman start


.PHONY: all clean compile runserver

#
# Developer Setup
#

setup:
	sudo apt-get -y install python-pygments
	bundle install

.PHONY: setup
