
# Switch whether to load the ros setup script when bash starts
# マシンを再起動するたびにswitch_load_ros_setupを呼び出して読み込む設定にしないとrosのsetup.bashが読み込まれないようにしてる

is_enable_load_ros_setup_script=false

load_ros_setup_if_enable() {
	local ros_setup_script_path=/opt/ros/iron 

	case ${is_enable_load_ros_setup_script} in
		true )
#TODO:スクリプト内/関数内でsourceしても呼び出し元には反映されない
		source ${ros_setup_script_path}/setup.bash
		;;
		false )
		;;
		* )
		;;
	esac
}

switch_load_ros_setup() {
	local usage='usage: switch_load_ros_setup [yes|no|help]. help for more help.'

	if [ $# -le 0 ];
	then
		echo ${usage}
		return 1
	elif test $# -ge 2;
	then
		echo ${usage}
		return 1
	fi

	case $1 in
		y|Y|yes|Yes )
			is_enable_load_ros_setup_script=true
			;;
		n|N|no|No )
			is_enable_load_ros_setup_script=false
			;;
		help)
			cat - <<- 'EOF'
			this function set enable/disable to load ros setup script.
			acceptable agrs:
			y|Y|yes|Yes : load if bashrc is loaded.
			n|N|no|No   : not load.
			help        : show this help.
			EOF
			;;
		* )
			echo ${usage}
			return 1
			;;
	esac
	
}

