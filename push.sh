#! /bin/sh
# auto-push this repo from crontab
cd `dirname $0`
git add --all
(git status |fgrep -q 'nothing to commit') && exit 0
git commit -m 'updated by push.sh'
git push
