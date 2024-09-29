#! /bin/sh
# auto-push this repo from crontab
cd `dirname $0`
git add --all
(git status |fgrep 'nothing to commit') && exit 0
echo 'would commit'
