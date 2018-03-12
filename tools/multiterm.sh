#!/bin/bash

# Functions about terminal multiplexer

case "$fn" in
    # reattach a screen session
    "s.re")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            screen -r "$firstParameter"
        else
            echo "Please specify which session you want to attach"
        fi
    ;;

    # detach a screen session
    "s.de")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            screen -d "$firstParameter"
        else
            echo "Please specify which session you want to detach"
        fi
    ;;

    # list screen sessions
    "s.ls")
        screen -ls
    ;;

    # attach/create a screen session
    "s.at")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            screen -S "$firstParameter"
        else
            echo "Please specify your session name"
        fi
    ;;

    # quit a screen session
    "s.rm")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            screen -S "$firstParameter" -X quit
        else
            echo "Please specify your session name you want to kill"
        fi
    ;;

    "s.rm.all")
        screen -ls | grep tach | cut -d. -f1 | awk '{print $1}' | xargs kill
    ;;

    "s.div.h")
        screen -S $STY -X split -v
        screen -S $STY -X focus
        screen -S $STY -X screen
    ;;

    "s.div.v")
        screen -S $STY -X split -h
        screen -S $STY -X focus
        screen -S $STY -X screen
    ;;

    "s.go.left" | "sl")
        screen -S $STY -X focus left    
    ;;

    "s.go.right" | "sr")
        screen -S $STY -X focus right
    ;;

    "s.go.up" | "su")
        screen -S $STY -X focus up
    ;;

    "s.go.down" | "sd")
        screen -S $STY -X focus down
    ;;

    "spx")
        screen -S $STY -X remove
    ;;

    "s.re.left" | "srl")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            screen -S $STY -X resize -h $firstParameter
        else
            screen -S $STY -X resize -h +10
        fi
    ;;

    "s.re.right" | "srr")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            screen -S $STY -X resize -h $firstParameter
        else
            screen -S $STY -X resize -h -10
        fi
    ;;

    "s.re.up" | "sru")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            screen -S $STY -X resize -v $firstParameter
        else
            screen -S $STY -X resize -v +10
        fi
    ;;
    
    "s.re.down" | "srd")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            screen -S $STY -X resize -v $firstParameter
        else
            screen -S $STY -X resize -v -10
        fi
    ;;

    # attach/create a tmux session
    "t.at")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            tmux new -s "$firstParameter"
        else
            tmux
        fi
    ;;

    "t.ls")
        tmux ls
    ;;

    "t.de")
        tmux detach
    ;;

    "t.re")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            tmux attach -t "$firstParameter"
        else
            echo "Please specify which session you want to detach"
        fi
    ;;

    "t.rm")
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            tmux kill-session -t "$firstParameter"
        else
            echo "Please specify which session to kill"
        fi
    ;;

    "t.rm.all")
        for sess in $(tmux ls | awk '{FS=":" ; print $1}' | sed 's/://g') ; do tmux kill-session -t $sess ; done
    ;;

    "t.div.h")
        tmux split-window -h
    ;;

    "t.div.v")
        tmux split-window -v
    ;;

    "t.go.left" | "tl")
        tmux select-pane -L
    ;;

    "t.go.right" | "tr")
        tmux select-pane -R
    ;;

    "t.go.up" | "tu")
        tmux select-pane -U
    ;;

    "t.go.down" | "td")
        tmux select-pane -D
    ;;

    'tpx')
        tmux kill-pane
    ;;

    # Sync other panes to the same folder
    'tcd')
        _pane_current=$(tmux display-message -p '#P')
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            for _pane in $(tmux list-panes -F '#P'); do
              if (( "$_pane" != "$_pane_current" )); then
                tmux send-keys -t ${_pane} "cd ${firstParameter}" ENTER
              fi
            done
        else
            for _pane in $(tmux list-panes -F '#P'); do
              if (( "$_pane" != "$_pane_current" )); then
                tmux send-keys -t ${_pane} "cd $(pwd)" ENTER
              fi
            done
        fi
    ;;

    # Sync all panes to the given folder
    'tcd.all')
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            for _pane in $(tmux list-panes -F '#P'); do
              tmux send-keys -t ${_pane} "cd $firstParameter" ENTER
            done
        else
            for _pane in $(tmux list-panes -F '#P'); do
                tmux send-keys -t ${_pane} "cd $(pwd)" ENTER
            done
        fi
    ;;

    # Source a given script to other panes
    'tsc')
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            _pane_current=$(tmux display-message -p '#P')
            for _pane in $(tmux list-panes -F '#P'); do
              if (( "$_pane" != "$_pane_current" )); then
                tmux send-keys -t ${_pane} "source $firstParameter" ENTER
              fi
            done
        else
            echo "Please specify a script you would like to source"
        fi
    ;;

    # Source a given script to all panes
    'tsc.all')
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            for _pane in $(tmux list-panes -F '#P'); do
              tmux send-keys -t ${_pane} "source $firstParameter" ENTER
            done
        else
            echo "Please specify a script you would like to source"
        fi
    ;;

    # designed to help with ROS related source, assume catkin_make
    # default is bash
    # pass zsh or bash to customize
    'tsc.ros')
        if [ ! -z "$firstParameter" -a "$firstParameter" != " " ]; then
            for _pane in $(tmux list-panes -F '#P'); do
              tmux send-keys -t ${_pane} "source $HOME/catkin_ws/devel/setup.${firstParameter}" ENTER
            done
        else
            for _pane in $(tmux list-panes -F '#P'); do
              tmux send-keys -t ${_pane} "source $HOME/catkin_ws/devel/setup.bash" ENTER
            done
        fi
    ;;

esac
