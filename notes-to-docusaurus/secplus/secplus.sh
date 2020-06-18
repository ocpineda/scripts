#!/bin/bash

cp /Users/friedchicken/src/notes/software/security/security-plus/secplus-study-guide.md /Users/friedchicken/src/opineda-docusaurus-site/docs/secplus-study-guide.md
cp /Users/friedchicken/src/notes/software/security/security-plus/sec-plus-udemy.md /Users/friedchicken/src/opineda-docusaurus-site/docs/sec-plus-udemy.md

yarn --cwd /Users/friedchicken/src/opineda-docusaurus-site build

git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ pull 

cd /Users/friedchicken/src/ocpineda.github.io/
cp -R  /Users/friedchicken/src/opineda-docusaurus-site/build/. /Users/friedchicken/src/ocpineda.github.io/

git  --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ add -A 
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/  commit -m "updating security+ notes"
git --git-dir=/Users/friedchicken/src/ocpineda.github.io/.git/ --work-tree=/Users/friedchicken/src/ocpineda.github.io/ push -u origin master

