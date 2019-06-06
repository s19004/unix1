#!/bin/bash

function cont() {
    echo -n 'continue?(y/n)'
    read yesno
    if [ $yesno = 'n' ]; then
        echo 'end...'
        exit
    fi
    echo 'continue...'
}
cd $HOME/rep/unix1/
git status
while :
do
    # git add/commit/pushの選択画面
    echo '1) git add -i'
    echo '2) git commit'
    echo '3) git push'
    echo '*) exit'
    echo '-n select?(1/2/3/*): '
    read select
    case "$select" in
    # git add -i 選択
    1)
        git add -i
        git status
        ;;
    # git commit 選択
    2)
        echo -n 'comment: '
        read comment
        git commit -m "$comment"
        git log --oneline
        ;;
    # git push 選択
    3)
        git push
        ;;
    *)
        echo 'end...'
        exit
        ;;
    esac
done
