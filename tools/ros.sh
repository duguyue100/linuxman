#!/bin/bash

# functions for ROS

case "$fn" in
    # activate the ros py
    "r.py"|"rpy")
        source $HOME/.zshrc.ros
    ;;

esac
