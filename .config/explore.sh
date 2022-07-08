#!/bin/bash

define_standard_settings() {
    selected_path="$HOME"

    choices=(
        '<open terminal here>'
        '.'
        '..'
        "$(ls "$selected_path")"
    )

        open_command='xdg-open'
        open_terminal_command='st -d'
}

define_standard_settings

while : ; do
    dmenu_result="$(printf '%s\n' "${choices[@]}" | dmenu -i -p "$selected_path" -l 50 "$@")" || exit 1
    if [ "$dmenu_result" == '<open terminal here>' ]; then
        $open_terminal_command "$selected_path"
        exit 0
    elif [[ $dmenu_result == '/'* ]]; then
        selected_path="$dmenu_result"
    elif [[ $dmenu_result =~ ^(https?|ftps): ]]; then
        "$open_command" "$dmenu_result"
        exit 0
    else
        selected_path="$(realpath "${selected_path}/${dmenu_result}")"
    fi

    if [ -f "$selected_path" ] || [ "$dmenu_result" = '.' ]; then
        "$open_command" "$selected_path"
        exit 0
    elif [ -d "$selected_path" ]; then
        choices=( '<open terminal here>' '.' '..' "$(ls "$selected_path")")
    else
        selected_path="$(dirname "$selected_path")"
    fi
done
