#!/usr/bin/env bash
# Base16 Simple - Pantheon Terminal color scheme install script
# JPOZ (http://jpoz.net)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#f6f8f8"
gsettings set "$SCHEMA" foreground "#3c474c"
gsettings set "$SCHEMA" palette "#f6f8f8:#ed735f:#8dd5aa:#fad19b:#967faf:#e88dc0:#34a7d2:#aebabf:#526068:#ed735f:#8dd5aa:#fad19b:#967faf:#e88dc0:#34a7d2:#242728"
gsettings set "$SCHEMA" cursor-color "#242728"

unset SCHEMA
