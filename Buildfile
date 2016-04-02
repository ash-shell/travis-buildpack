#!/bin/bash

cd ..
git clone --recursive https://github.com/ash-shell/ash.git
mkdir -p ash/global_modules/github.com/ash-shell/
mv "$MODULE_REPO_NAME" "ash/global_modules/github.com/ash-shell/$MODULE_REPO_NAME"
touch ash/global_modules/module_aliases.yaml
printf "$MODULE_REPO_NAME: github.com/ash-shell/$MODULE_REPO_NAME" >> ash/global_modules/module_aliases.yaml
cd ash
echo $(pwd)
