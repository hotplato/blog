#!/usr/bin/env sh

set -e

npm run build

cd ./docs/.vuepress/dist

git init
git config user.name "${username}"
git config user.email "${useremail}"
git add -A
git commit -m 'deploy'
# git push -f https://${token}@github.com/ning734824592/blog.git master:gh-pages
# git@github.com:<USERNAME>/<USERNAME>.github.io.git master
git push -f git@github.com:ning734824592/ning734824592.github.io.git master