#!/bin/sh
hugo
git add --all
git commit -am "autoupdate"
git push origin master
ssh -t blog.robertross.me "./updateblog.sh"