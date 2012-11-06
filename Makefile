QUICKSTART_PROJECT_NAME ?= quickstart-jekyll-zurb

#
# Setup
#
setup:
	bundle install
	git config --unset branch.master.remote
	git config --unset branch.master.merge

#
# Development
#
runserver:
	bundle exec foreman start

#
# Deploy
#
deploy:
	-git add asset/css/app.css
	-git add asset/javascript/app.js
	-git commit -m "Update generated assets."
	-git push
