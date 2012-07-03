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

## Running an nginx "production" setup

Run the following command from the source root directory:

  * `./run-nginx.sh`

This script will run collectstatic, fire up nginx as the current user based on
a local conf, and then run the Django app behind it. nginx will server your
static files. After your terminate the Django app, nginx will stop too.

**NOTE** I run nginx on Mac OSX, as installed by [homebrew](http://mxcl.github.com/homebrew). YMMV on Linux or Windows.

## Running an Amazon S3 "production" setup

 * Create an S3 bucket to collect your static assets in and serve them from

Then, from the source root directory:

 * `S3KEY=XXX S3SECRET="XXX" S3BUCKET="mah-bukkit" ./run-s3.sh`
 
Of course, substitute in your AWS key, secret, and bukkit, I mean, bucket!

## Updating Twitter Bootstrap

The Bootstrap git submodule can be updated as follows:

 * `cd bootstrap_compressord/twitter_bootstrap/static`
 * `git checkout v2.0.5 # Or other commit, preferably a release tag`
 * `cd ../..`
 * `git add bootstrap_compressord/twitter_bootstrap/static`
 * `git commit -m "Upgrade twitter bootstrap to 2.0.5"`
