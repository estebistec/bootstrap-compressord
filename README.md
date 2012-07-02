# Twitter Bootstrap Compressor'd

## Overview

This is a simple template project utilizing [Twitter Bootstrap](http://twitter.github.com/bootstrap) and managing static assets with [django-compressor](http://django_compressor.readthedocs.org).

The purpose of this project is two-fold.

 * Keep a template project that can be improved later
 * Compare django-compressor with other methods of managing static assets with
   Django

## Obtaining

 * `git clone git://github.com/estebistec/bootstrap-compressord.git`
 * `cd bootstrap-compressord`
 * `git submodule update --init # Pull in the Twitter Bootstrap git submodule`

## Running in development mode

 * `cd bootstrap_compressord`
 * `python manage.py collectstatic --noinput`
 * `python manage.py runserver`

## Running in "production" mode

To preview a production setting

  * Set `DEBUG = False` in `settings.py`
  * `cp nginx.conf.template nginx.conf` and make necessary modifications
  * `nginx -c $(pwd)/nginx.conf`
  * `cd bootstrap_compressord`
  * `python manage.py collectstatic --noinput`
  * `python manage.py runserver`

To stop nginx: `nginx -s stop`

**NOTE** I run nginx on Mac OSX, as installed by [homebrew](http://mxcl.github.com/homebrew). YMMV on Linux or Windows.

## Updating Twitter Bootstrap

The Bootstrap git submodule can be updated as follows:

 * `cd bootstrap_compressord/twitter_bootstrap/static`
 * `git checkout v2.0.5 # Or other commit, preferably a release tag`
