#!/bin/bash

# Copy your files
cp /Users/friedchicken/src/notes/software/security/cissp/cissp.md /Users/friedchicken/src/opineda-docusaurus-site/docs/cissp.md

# Build the static site in Docusaurus
yarn --cwd /Users/friedchicken/src/opineda-docusaurus-site build

# Pull down the latest Docusaurus full site
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ pull 


cd /Users/friedchicken/src/ocpineda.github.io/
cp -R  /Users/friedchicken/src/opineda-docusaurus-site/build/. /Users/friedchicken/src/ocpineda.github.io/

git  --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ add -A 
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/  commit -m "updating cissp notes"
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ push -u origin master

