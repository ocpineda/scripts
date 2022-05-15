#!/bin/bash 

cp /Users/friedchicken/src/notes/personal-finance/investing-101.md /Users/friedchicken/src/opineda-docusaurus-site/docs/investing-101.md

yarn --cwd /Users/friedchicken/src/opineda-docusaurus-site build

git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ pull 

cd /Users/friedchicken/src/ocpineda.github.io/
cp -R  /Users/friedchicken/src/opineda-docusaurus-site/build/. /Users/friedchicken/src/ocpineda.github.io/

git  --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ add -A 
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/  commit -m "updating investing"
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ push -u origin master