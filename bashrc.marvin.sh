export ROS_PACKAGE_PATH=~/git:~/ros_workspace:$ROS_PACKAGE_PATH

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
COLOR_NONE="\[\e[0m\]"
GREEN="\[\e[32;1m\]"
RED="\[\e[31;1m\]"
CYAN="\[\e[36;1m\]"
export PS1="$CYAN\u@$GREEN\h: $COLOR_NONE\W $RED\$(parse_git_branch)$COLOR_NONE> "

alias ipython='ipython'
# --pylab=qt'
alias emacs='emacs -nw'
alias colossus7='ssh -X ari@colossus7'
alias monty='ssh -X ari@monty1wan.bme.gatech.edu'
alias gats='ssh -X ari@pr2c1wan.bme.gatech.edu'
alias autobed='ssh pi@axiom'
alias marvin='ssh -X mycroft@mac-mini-marvin'
alias pressure_mat='ssh -X mycroft@mac-mini-marvin'
alias pr2lan='ssh -X 10.68.0.1'
alias 'do_source'='source ~/.bashrc'
alias 'gui'='rosrun dynamic_reconfigure reconfigure_gui'
alias dash='echo "rosrun rqt_pr2_dashboard rqt_pr2_dashboard" && rosrun rqt_pr2_dashboard rqt_pr2_dashboard'
alias tuck='echo "rosrun pr2_tuckarm tuck_arms.py -r t -l t" && rosrun pr2_tuckarm tuck_arms.py -r t -l t'
alias pr2joy='echo "roslaunch pr2_teleop teleop_joystick.launch" && roslaunch pr2_teleop teleop_joystick.launch'
alias 'pr2_fun'='roslaunch pr2_mannequin_mode pr2_mannequin_mode.launch'
alias cm='echo "rosrun pr2_controller_manager pr2_controller_manager" && rosrun pr2_controller_manager pr2_controller_manager'
alias cml='echo "rosrun pr2_controller_manager pr2_controller_manager list" && rosrun pr2_controller_manager pr2_controller_manager list'
alias file_server='sudo mount -t cifs //ad.gatech.edu/bme/labs/hrl ~/hrl_file_server -o username=akapusta3,uid=$UID,domain=ad.gatech.edu,noperm,sec=ntlm'

export SVN_EDITOR=emacs
export GIT_EDITOR=emacs

