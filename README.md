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
    git remote rename origin quickstart-jekyll-zurb
    bundle install

Customize `_config.yml` to suit your needs. You usually only have to edit
entries below "Site-specific Settings".

Use Foreman to start the development server and re-generate SASS stylesheets
upon changes:

    bundle exec foreman start

Then use your favorite editor and start working on your site.




Project Information
===================

* Home Page: https://github.com/lvillani/quickstart-jekyll-zurb
* Issue Tracker: https://github.com/lvillani/quickstart-jekyll-zurb/issues