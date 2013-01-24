all:
	bundle exec jekyll --no-server --no-auto
	bundle exec compass compile
	ruby sprockets.rb

clean:
	rm -rf _site

deploy: clean all
	cp -r _site/asset ./
	-git add asset
	-git commit -m "quickstart: update generated assets for Github Pages"
	-git push origin master

runserver:
	bundle exec foreman start

setup:
	bundle install
	git config --unset branch.master.remote
	git config --unset branch.master.merge

.PHONY : all clean deploy runserver setup
