#!/usr/bin/env sh

set -e

npm run build

cd ./docs/.vuepress/dist

git init
git config user.name "${username}"
git config user.email "${useremail}"
git add -A
git commit -m 'deploy'
git push -f https://${token}@github.com/hotplato/hotplato.github.io.git master
# git@github.com:<USERNAME>/<USERNAME>.github.io.git master
# git push -f git@github.com:hotplato/hotplato.github.io.git master