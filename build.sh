#!/bin/bash

cd /root/projects/www/
git reset --hard
git pull

npm install
# npm run build
hexo clean
hexo generate

# mkdir /usr/share/www
rm -rf /usr/share/www/*
cp -r public/* /usr/share/www
