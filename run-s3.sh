#!/bin/sh

cd bootstrap_compressord
./manage.py collectstatic --settings=bootstrap_compressord.s3_settings --noinput
./manage.py runserver --settings=bootstrap_compressord.s3_settings
