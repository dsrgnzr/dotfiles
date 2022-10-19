#!/bin/bash

function powermenu {
	options="Shutdown\nRestart\nSleep"
	selected=$(echo -e $options | dmenu)
	if [[ $selected = "Off" ]]; then
		loginctl poweroff
	elif [[ $selected = "Reboot" ]]; then
		loginctl reboot
	elif [[ $selected = "Sleep" ]]; then
		loginctl suspend-then-hibernate
	fi
}

powermenu
