# simple-live-reload
A very simple script to automatically reload browsers on save. Works on OSX and linux.

When this script is running, saving a file in your text editor automatically
reloads your browsers in order to check your changes.

This is perhaps not as powerful as the other live-reload applications, but has
the advantage of not requiring any change to your source code. It also doesn't require your source files to be served by an http server (i.e. it works with opening the file in the browsers directly, eg, `file:///home/walter/foo.html`)

Settings:
- Edit both files to add the information needed (what files to monitor for changes, what browsers to reload, etc.)
- run `live-reload.sh` in a terminal

Todo:
- Put everything in a single file
