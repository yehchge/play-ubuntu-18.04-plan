#!/usr/bin/env bash

set -e


### Head: lxqt #################################################################
#
lxqt_config_install () {
	mkdir -p $HOME/.config/lxqt
	echo "mkdir -p $HOME/.config/lxqt"

	cp ./config/lxqt/globalkeyshortcuts.conf $HOME/.config/lxqt/globalkeyshortcuts.conf
	echo "cp ./config/lxqt/globalkeyshortcuts.conf $HOME/.config/lxqt/globalkeyshortcuts.conf"

	cp ./config/lxqt/lxqt.conf $HOME/.config/lxqt/lxqt.conf
	echo "cp ./config/lxqt/lxqt.conf $HOME/.config/lxqt/lxqt.conf"

	cp ./config/lxqt/panel.conf $HOME/.config/lxqt/panel.conf
	echo "cp ./config/lxqt/panel.conf $HOME/.config/lxqt/panel.conf"

	cp ./config/lxqt/session.conf $HOME/.config/lxqt/session.conf
	echo "cp ./config/lxqt/session.conf $HOME/.config/lxqt/session.conf"

}
#
### Tail: lxqt #################################################################


### Head: xfce4 ################################################################
#
xfce4_config_install () {
	mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
	echo "mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml"
}
#
### Tail: xfce4 ################################################################


### Head: pcmanfm-qt ###########################################################
#
pcmanfm_qt_config_install () {
	mkdir -p $HOME/.config/pcmanfm-qt/lxqt
	echo "mkdir -p $HOME/.config/pcmanfm-qt/lxqt"

	cp ./config/pcmanfm-qt/lxqt/settings.conf $HOME/.config/pcmanfm-qt/lxqt/settings.conf
	echo "cp ./config/pcmanfm-qt/lxqt/settings.conf $HOME/.config/pcmanfm-qt/lxqt/settings.conf"

	return

	mkdir -p $HOME/.config/pcmanfm-qt/default
	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"

	cp ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf
	echo "cp ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"

}
#
### Tail: pcmanfm-qt ###########################################################


### Head: rofi #################################################################
#
rofi_config_install () {
	mkdir -p $HOME/.config/rofi
	echo "mkdir -p $HOME/.config/rofi"

	cp ./config/rofi/config $HOME/.config/rofi/config
	echo "cp ./config/rofi/config $HOME/.config/rofi/config"
}
#
### Tail: rofi #################################################################


### Head: fcitx ################################################################
#
fcitx_config_install () {
	mkdir -p $HOME/.config/fcitx
	echo "mkdir -p $HOME/.config/fcitx"

	cp ./config/fcitx/profile $HOME/.config/fcitx/profile
	echo "cp ./config/fcitx/profile $HOME/.config/fcitx/profile"

	fcitx_config_install_im_config

}

fcitx_config_install_im_config () {
	echo
	im-config -n fcitx
	echo "im-config -n fcitx"
	echo "cat ~/.xinputrc"
	cat ~/.xinputrc
	echo
}
#
### Tail: fcitx ################################################################


### Head: gtk3 #################################################################
#
gtk3_config_install () {
	mkdir -p $HOME/.config/gtk-3.0
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
#
### Tail: gtk3 #################################################################


### Head: gtk2 #################################################################
#
gtk2_config_install () {

	cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
#
### Tail: gtk2 #################################################################


### Head: main #################################################################
#
main_config_install () {
	lxqt_config_install

	xfce4_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install
}
#
main_config_install

### Tail: main #################################################################
