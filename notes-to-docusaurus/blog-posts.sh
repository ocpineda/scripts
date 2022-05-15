#!/bin/bash

# Pull in latest blog notes to prevent merge conflicts, then push them to Github.
git  --git-dir=/Users/friedchicken/src/sec-blog/.git/ --work-tree=/Users/friedchicken/src/sec-blog/ add -A 
git --git-dir=/Users/friedchicken/src/sec-blog/.git/ --work-tree=/Users/friedchicken/src/sec-blog/  commit -m "updating blog"
git --git-dir=/Users/friedchicken/src/sec-blog/.git/ --work-tree=/Users/friedchicken/src/sec-blog/ push -u origin contrib-oscar


# rsync instead of cp because it just does changes after first sync
rsync -a /Users/friedchicken/src/sec-blog/posts/ /Users/friedchicken/src/opineda-docusaurus-site/blog

## build the site
yarn --cwd /Users/friedchicken/src/opineda-docusaurus-site build

## get latest version of github pages site
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ pull 


cd /Users/friedchicken/src/ocpineda.github.io/
cp -R  /Users/friedchicken/src/opineda-docusaurus-site/build/. /Users/friedchicken/src/ocpineda.github.io/

git  --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ add -A 
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/  commit -m "updating blog"
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ push -u origin master