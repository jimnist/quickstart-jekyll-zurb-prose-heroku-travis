TODO
====

* un-HAML
* test rss
* prose.io-ify
* heroku-ify
* travis ci deploy

Jekyll + ZURB Foundation + prose.io + heroku + travis ci Quickstart
===================================

started with a fork from [Jekyll + ZURB Foundation Quickstart](https://github.com/lvillani/quickstart-jekyll-zurb). 

but then i . .

changed to NOT use HAML, since the main sites that i am using this for need to be edited by end users/site-owners via [prose.io](http://prose.io/). 

also set up to use prose.io and to deploy to [Heroku](http://heroku.com) using [Travis CI](http://travis-ci.org/) based on the strategy detailed [here](http://metabates.com/2012/10/23/deploying-to-heroku-from-travisci/).

i also got rid of `make setup` step generally, because the sites i use this for are not programming blogs and i think explicitly running `bundle install` makes more sense. later, i got rid of the Makefile altogether.

i also modified the directory structure to be more like [octopress](http://octopress.org/) to have a **source** directory for the jekyll files so that i can point prose.io at that directory only and not have users mess with other files. i am also having output go to the top level **site** directory and sass files are generated from the **sass** directory.

and, since i develop on a mac and also have to use some old PHP/apache apps from time to time and haven't figured out how to use [pow](http://pow.cx/) with those, i am using tmuxinator to set up and run server processes. included is a **your-app-name.yml** sample config file for this, which should get renamed and symlinked to **~/.tmuxinator/**

ZURB Foundation usage is pretty minimal here. pick and choose from all the options for the real sites.

What's Inside
=============

## Technologies

* [jekyll](http://jekyllrb.com/)
* [SASS](http://sass-lang.com/)
* [Compass](http://compass-style.org/)
* [ZURB Foundation](http://foundation.zurb.com/)
* [tmuxinator](https://github.com/aziz/tmuxinator)
* [prose.io](http://prose.io/)
* [Heroku](http://www.heroku.com/)
* [Travis CI](https://travis-ci.org/)
* you should use [livereload](http://livereload.com/)

## Goodies

* Default page templates, suitable for a site with a blog;
* Sensible Jekyll defaults;
* Site-wide Atom feed for all blog posts;
* Uses tmuxinator to orchestrate `compass watch` and Jekyll development server;




Getting Started
===============

Clone this repository and perform the automated setup procedure:

    git clone https://github.com/ngn33r/quickstart-jekyll-zurb my-jekyll-site
    cd my-jekyll-site
    bundle install

At this point you can start the development server by running:

    make runserver




License
=======

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or distribute
this software, either in source code form or as a compiled binary, for any
purpose, commercial or non-commercial, and by any means.

In jurisdictions that recognize copyright laws, the author or authors of this
software dedicate any and all copyright interest in the software to the public
domain. We make this dedication for the benefit of the public at large and to
the detriment of our heirs and successors. We intend this dedication to be an
overt act of relinquishment in perpetuity of all present and future rights to
this software under copyright law.

Unless you really want to, do not even mention that the copied content
originates from this skeleton library. Its sole purpose is to be copied into
other projects.

The above statements apply to all content in this skeleton library, even when
the COPYING files, or the headers in the files state otherwise, they are just
common examples.
