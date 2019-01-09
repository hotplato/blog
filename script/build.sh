#!/usr/bin/env sh

set -e

npm run build

cd ./docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/ning734824592/blog.git master:gh-pages