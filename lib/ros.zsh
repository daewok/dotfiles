# Set ROS_ZSH_SETUP_FILE_LOCATION if different from the default.

load_ros(){
    if [[ -z "$ROS_ZSH_SETUP_FILE_LOCATION" ]]; then
	    ROS_ZSH_SETUP_FILE_LOCATION="$HOME/mers-workspace/ros/hydro/roslisp_overlay/dry/setup.zsh"
    fi

    if [ -e $ROS_ZSH_SETUP_FILE_LOCATION ]
    then
        . $ROS_ZSH_SETUP_FILE_LOCATION
    fi

    export ROS_LISP_IMPL=allegro
}