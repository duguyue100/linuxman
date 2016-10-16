#!/bin/bash

# functions that brought by external tools

# convert pdf to html
case "$fn" in
    # weather from command line
    "wttr")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            curl wttr\.in/$firstParameter
        else
            curl wttr\.in
        fi
    ;;

    ## print top10 used commands
    "top10")
        echo "Top10 Used Commands"
        HISTFILE=$HOME/.bash_history
        set -o history
        history | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -nr | head
    ;;

    "starwar")
        telnet towel.blinkenlights.nl
    ;;

    # Open Overleaf project
    "ol.open"|"olgo")
        git_remote=`git config --get remote.origin.url`
        open "${git_remote/git/www}"
    ;;

esac
