Contents
========

Clone this repository to quickly set-up a Jekyll project which uses ZURB
Foundation, Compass and SASS.




Goodies
=======

* Compass;
* SASS;
* ZURB Foundation & Compass integration;
* Default page templates;
* Sensible Jekyll defaults;
* Site-wide Atom feed for all blog posts;
* Uses Foreman to orchestrate Jekyll's development server and `compass watch`;




Getting Started
===============

Clone the repository and install its dependencies:

    git clone git://github.com/lvillani/quickstart-jekyll-zurb.git my-project
    cd my-project
    make setup

Please note that after you run `make setup` your master branch won't be tracking
`origin/master` anymore and the remote will be renamed from `origin` to
`quickstart-jekyll-zurb`.

Then customize `_config.yml` to suit your needs. You usually only have to edit
entries below the "Site-specific Settings" comment.

To start the development server and re-generate SASS stylesheets upon changes:

    make devel

Then use your favorite editor to work on your site.

### Deployment

The top-level Makefile supports deployment to Github Pages via the `deploy`
target. It assumes you have configured your master branch to properly track a
remote branch pointing to your Github repository (something you have to do
manually).

Running:

    make deploy

Will commit any update to generated files (minified CSS and JS files), then push
all changes to your Github Pages repository.




Project Information
===================

* Home Page: https://github.com/lvillani/quickstart-jekyll-zurb
* Issue Tracker: https://github.com/lvillani/quickstart-jekyll-zurb/issues
