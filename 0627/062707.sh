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
    echo '1) git log'
    echo '2) git log --oneline'
    echo '3) git log --oneline--name-only'
    echo '*) exit'
    echo '-n select?(1/2/3*): '
    read select
    case "$select" in
    1)
        git log
        ;;
    2)
        git log --oneline
        ;;
    3)
        git log --oneline--name-only
        ;;
    *)
        echo 'end...'
        exit
        ;;
    esac
done
