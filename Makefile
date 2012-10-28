GIT = git
BUNDLE = bundle


help:
	@echo "- setup: Installs dependencies and remotes."
	@echo "- devel: Starts the development server."
	@echo "- deploy: Deploys to GitHub Pages."


setup:
	$(GIT) remote rename origin quickstart-jekyll-zurb
	$(GIT) config --unset branch.master.remote
	$(GIT) config --unset branch.master.merge
	$(BUNDLE) install


devel:
	$(BUNDLE) exec foreman start


deploy:
	$(GIT) add asset/css/app.css
	$(GIT) add asset/javascript/app.js
	$(GIT) commit -m "Update generated assets."
