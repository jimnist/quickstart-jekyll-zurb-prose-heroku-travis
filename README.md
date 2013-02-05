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

At this point you can start the development server by running:

    make runserver




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
