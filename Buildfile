#!/bin/bash

# Get the current directory name
MODULE_REPO_NAME="${PWD##*/}"
MODULE_KEY="$(echo $MODULE_REPO_NAME | sed 's/-/_/g')"

# Clone Ash
cd ..
git clone --recursive https://github.com/ash-shell/ash.git

# Set up project as an Ash Module
mkdir -p ash/global_modules/github.com/ash-shell/
mv "$MODULE_REPO_NAME" "ash/global_modules/github.com/ash-shell/$MODULE_REPO_NAME"
touch ash/global_modules/module_aliases.yaml
printf "$MODULE_KEY: github.com/ash-shell/$MODULE_REPO_NAME" >> ash/global_modules/module_aliases.yaml

# Move to ash's repo and output that directory
# we're going to want to switch to that directory
# in the travis config file
cd ash && echo $(pwd)
