#!/bin/bash

# pull all changes from remote.
cd repo-A
git pull
cd ..

# overwrite same repository with name repo-B but not overwrite file .git/config of repo-B
cp repo-B/.git/config .
rm -rf repo-B
cp -r repo-A repo-B
cp -f config repo-B/.git
cp mailmap repo-B/.git/.mailmap
cd repo-B/.git

# change history
git-filter-repo --mailmap .mailmap --force
cd ../..
cp -f config repo-B/.git
cd repo-B
git push