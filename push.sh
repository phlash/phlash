#! /bin/sh
# auto-push this repo from crontab
cd `dirname $0`
git add --all
(git status |fgrep 'nothing to commmit') && exit 0
echo 'would commit'
