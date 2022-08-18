#! /bin/bash

sudo filebot -rename -r $1 --format "{s00e00} - {t}" --db thetvdb -non-strict --lang it
