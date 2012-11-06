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

Export the `QUICKSTART_PROJECT_NAME` environment variable which is used by the
top-level Makefile to set-up your project. It must follow Python package
naming conventions:

    export QUICKSTART_PROJECT_NAME=my_project

Then clone this repository and install required Ruby gems:

    git clone -o quickstart-jekyll-zurb git://github.com/lvillani/quickstart-jekyll-zurb.git ${QUICKSTART_PROJECT_NAME}
    cd ${QUICKSTART_PROJECT_NAME}
    make setup

Please note that after the setup process completes, your master branch won't
be tracking the `quickstart-jekyll-zurb` repository anymore.

To start the Django development server (along with any other worker process
such as Compass) run:

    make runserver

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
