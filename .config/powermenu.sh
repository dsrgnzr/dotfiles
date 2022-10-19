#!/bin/bash

function powermenu {
	options="off\nreboot\nsleep"
	selected=$(echo -e $options | dmenu)
	if [[ $selected = "off" ]]; then
		loginctl poweroff
	elif [[ $selected = "reboot" ]]; then
		loginctl reboot
	elif [[ $selected = "sleep" ]]; then
		loginctl suspend-then-hibernate
	fi
}

powermenu
