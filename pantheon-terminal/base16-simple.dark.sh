#!/usr/bin/env bash
# Base16 Simple - Pantheon Terminal color scheme install script
# JPOZ (http://jpoz.net)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#242728"
gsettings set "$SCHEMA" foreground "#aebabf"
gsettings set "$SCHEMA" palette "#242728:#ed735f:#8dd5aa:#fad19b:#967faf:#e88dc0:#34a7d2:#aebabf:#526068:#ed735f:#8dd5aa:#fad19b:#967faf:#e88dc0:#34a7d2:#f6f8f8"
gsettings set "$SCHEMA" cursor-color "#30383b"

unset SCHEMA
