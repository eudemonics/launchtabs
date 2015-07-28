#!/bin/bash
# author: vvn <lost [at] nobody [dot] ninja>
# save in /usr/local/bin as launchtabs, then chmod +x /usr/local/bin/launchtabs

function new_tab() {
  TAB_NAME="$1"
  COMMAND="$2"
  osascript \
    -e "tell application \"Terminal\"" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"printf '\\\e]1;$TAB_NAME\\\a'; $COMMAND\" in front window" \
    -e "end tell" > /dev/null
}

# change values here. 
# default creates tab called HOME, changes to home directory & lists contents
TABONE="HOME"
CMDONE="cd ~; ls -la"

# add new_tab <tab name> <command to run> for each new tab to open
new_tab "$TABONE" "$CMDONE"

####################################################
# to create function "tabname":
# 1) paste below into .bash_profile or .bashrc
# 2) remove the # signs
# 3) save & close; type 'source <path to profile>'
# 4) now rename tab by typing 'tabname <tab title>'
####################################################
# tabname() {
#   TABSTRING="\e]1;$1\a"
#   printf $TABSTRING
# }
####################################################
