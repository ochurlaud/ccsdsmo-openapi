#! /bin/bash -e

redocly bundle apis/* -o dist/ 
for k in MAL MPD ; do
    redocly build-docs -o html/$k.html dist/$k.yml
done
