#!/bin/bash

export EDITOR=$1

# compile the source files and other things before reloading browsers
make

shift;
for app in "$@"
do
	case `uname` in
	Darwin)
		/usr/bin/osascript <<-APPLESCRIPT
		activate application "$app"
		delay 0.5
		tell application "System Events" to keystroke "r" using {command down}
		delay 0.5
		activate application "$EDITOR"
		APPLESCRIPT
		;;
	*)
		xdotool search --onlyvisible --class "$app" windowfocus key \
		    --window %@ 'ctrl+r' || {
			1>&2 echo "unable to signal an application named \"$app\""
		}
    xdotool search --onlyvisible --class "$EDITOR" windowfocus
		;;
	esac
done
