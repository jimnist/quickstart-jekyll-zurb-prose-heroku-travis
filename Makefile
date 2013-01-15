all:
	bundle exec jekyll --no-server --no-auto
	bundle exec compass compile

clean:
	rm -rf _site

deploy:
	-git add asset/css/app.css
	-git add asset/javascript/app.js
	-git commit -m "Update generated assets."
	-git push

runserver:
	bundle exec foreman start

setup:
	bundle install
	git config --unset branch.master.remote
	git config --unset branch.master.merge

.PHONY : all clean deploy runserver setup
