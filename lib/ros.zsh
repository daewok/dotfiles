# Set ROS_ZSH_SETUP_FILE_LOCATION if different from the default.

if [[ -z "$ROS_ZSH_SETUP_FILE_LOCATION" ]]; then
   ROS_ZSH_SETUP_FILE_LOCATION="$HOME/mers-workspace/ros/setup.zsh"
fi

if [ -e $ROS_ZSH_SETUP_FILE_LOCATION ]
then
	. $ROS_ZSH_SETUP_FILE_LOCATION
fi