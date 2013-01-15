all:
	bundle exec jekyll --no-server --no-auto
	bundle exec compass compile

clean:
	rm -rf _site

deploy: clean all
	cp -rv _site/asset ./
	-git add asset
	-git commit -m "quickstart: update generated assets for Github Pages"
	-git push

runserver:
	bundle exec foreman start

setup:
	bundle install
	git config --unset branch.master.remote
	git config --unset branch.master.merge

.PHONY : all clean deploy runserver setup
