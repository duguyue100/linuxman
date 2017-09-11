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
        xdg-open 2>/dev/null "${git_remote/git/www}"
    ;;

    "share")
        cp $LINUX/res/share.md $SHARE_PATH
        local_ip=$(hostname -I | cut -d' ' -f1)
        if [ $? != 0 ]; then
            local_ip=$(hostname -I | cut -d' ' -f1)
        fi
        sed -i "s/toreplace/$local_ip/g" $SHARE_PATH/share.md
        cd $SHARE_PATH
        git pull origin master
        git add $SHARE_PATH/share.md
        git commit -m "update share.md"
        git push origin master
        pushd $HOME/share;
        python -m SimpleHTTPServer;
        popd
    ;;

esac
