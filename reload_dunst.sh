#!/usr/bin/env bash
#
# Script to set colors generated by 'wal'
# https://github.com/dylanaraps/wal
#
# from: https://github.com/dylanaraps/pywal/issues/322

 # Source generated colors.
. "${HOME}/.cache/wal/colors.sh"

 reload_dunst() {
    pkill dunst
    dunst \
	-frame_width 3 \
	-frame_color "${color7}" \
        -lb "${color0}" \
        -nb "${color0}" \
        -cb "${color0}" \
        -lf "${color7}" \
        -cf "${color7}" \
        -nf "${color7}" &
}

reload_dunst