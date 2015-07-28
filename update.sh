#!/usr/bin/env bash

# http://chrisjean.com/2009/04/20/git-submodules-adding-using-removing-and-updating/
# when cloning a repo with submodules or nested submodules, you must run the following
# in the parent directory of every submodule, otherwise the submodules will be empty:

git checkout master
git submodule init
git submodule update
