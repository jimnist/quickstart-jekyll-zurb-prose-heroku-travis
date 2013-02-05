Jekyll + ZURB Foundation Quickstart
===================================

A template project to quickly start a new project based on ZURB Foundation
and the Jekyll static site generator.

Unlike other projects (such as Octopress), this is a minimal skeleton
repository upon which you can build your project. You _have_ to understand
all the moving parts and how they are configured.




What's Inside
=============

## Technologies

* SASS
* Compass;
* ZURB Foundation;
* Foreman;
* Sprockets;

## Goodies

* Default page templates, suitable for a blog;
* Sensible Jekyll defaults;
* Site-wide Atom feed for all blog posts;
* Uses Foreman to orchestrate `compass watch` and Jekyll development server;




Getting Started
===============

Clone this repository and perform the automated setup procedure:

    git clone git://github.com/lvillani/quickstart-jekyll-zurb.git my-site
    cd my-site
    make setup

Please note that after the setup process completes, your master branch won't
be tracking the `quickstart-jekyll-zurb` repository anymore.

At this point you can start the development server by running:

    make runserver

## Deployment

The top-level Makefile supports deployment to Github Pages via the `deploy`
target. It assumes you have configured your master branch to properly track a
remote branch pointing to your Github repository (something you have to do
manually).

Running:

    make deploy

Will commit any update to generated files (minified CSS and JS files), then
push all changes to your Github Pages repository.

__NOTE:__ The Github Pages deployment target won't upload a locally-generated
version of your site but will let Github re-generate it using your source
files as input (except for app.css and app.js files).




Directory & File Layout
=======================

    .
    ├── asset/         -- Static assets (e.g.: images)
    ├── _layouts/      -- Jekyll Layouts
    ├── _posts/        -- Blog posts
    ├── _sass/         -- SASS/SCSS (processed by Compass)
    ├── _site/         -- Output directory for generated content
    ├── _config.yml    -- Jekyll Configuration file
    ├── compass.rb     -- Compass configuration file
    ├── Gemfile        -- Ruby Bundler configuration file
    ├── Makefile       -- Top level Makefile
    ├── Procfile       -- Foreman configuration file
    └── robots.txt     -- Directives for web crawlers
