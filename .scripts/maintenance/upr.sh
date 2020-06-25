#!/usr/bin/env sh
# Copyright 2020 (c)  all rights reserved by S D Rausty;  see LICENSE  
# https://sdrausty.github.io hosted courtesy https://pages.github.com
#####################################################################
set -eu
git remote add upstream https://github.com/BuildAPKs/buildAPKs.github ||:
git pull upstream https://github.com/BuildAPKs/buildAPKs.github ||:
git checkout master
git fetch --all
git pull --rebase upstream master
git push origin master
# upr.sh EOF
