#! /bin/bash
git add *
git commit -m "save"
git push
ssh root "/root/projects/www/build.sh"
