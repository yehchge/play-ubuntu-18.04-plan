#!/usr/bin/env bash

set -e



### Head: pkg_install ##########################################################
#
mousepad_pkg_install () {

	echo

	echo '### Head: mousepad_pkg_install #################################################'
	echo '#'

	sudo apt-get install mousepad

	echo '#'
	echo '### Tail: mousepad_pkg_install #################################################'
	echo

}
#
### Tail: pkg_install ##########################################################


### Head: conf_set #############################################################
#
mousepad_conf_set () {

	echo

	echo '### Head: mousepad_conf_set ####################################################'
	echo '#'


	## gsettings list-recursively | grep mousepad


	echo
	echo "gsettings set org.xfce.mousepad.preferences.window always-show-tabs true"
	gsettings set org.xfce.mousepad.preferences.window always-show-tabs true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.window toolbar-visible true"
	gsettings set org.xfce.mousepad.preferences.window toolbar-visible true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.window path-in-title true"
	gsettings set org.xfce.mousepad.preferences.window path-in-title true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view highlight-current-line true"
	gsettings set org.xfce.mousepad.preferences.view highlight-current-line true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view show-right-margin true"
	gsettings set org.xfce.mousepad.preferences.view show-right-margin true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view show-line-numbers true"
	gsettings set org.xfce.mousepad.preferences.view show-line-numbers true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view match-braces true"
	gsettings set org.xfce.mousepad.preferences.view match-braces true


	echo
	echo "gsettings set org.xfce.mousepad.preferences.view tab-width 4"
	gsettings set org.xfce.mousepad.preferences.view tab-width 4

	echo
	echo "gsettings set org.xfce.mousepad.preferences.view auto-indent true"
	gsettings set org.xfce.mousepad.preferences.view auto-indent true

	echo

	echo '#'
	echo '### Tail: mousepad_conf_set ####################################################'
	echo

}
#
### Tail: conf_set #############################################################


### Head: main #################################################################
#
mousepad_main_install () {

	mousepad_pkg_install
	mousepad_conf_set

}

mousepad_main_install
#
### Tail: main #################################################################
