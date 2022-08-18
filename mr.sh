#! /bin/bash

sudo filebot -rename $1 --format "{n.colon(' - ')} ({y})" --db themoviedb -non-strict --lang it
