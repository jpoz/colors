#!/usr/bin/env bash
# Base16 Simple - Pantheon Terminal color scheme install script
# JPOZ (http://jpoz.net)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#242728"
gsettings set "$SCHEMA" foreground "#aebabf"
gsettings set "$SCHEMA" palette "#242728:#E87364:#93D4AC:#F8D0A0:#43A9CF:#9581AD:#81B5BC:#aebabf:#526068:#E87364:#93D4AC:#F8D0A0:#43A9CF:#9581AD:#81B5BC:#f6f8f8"
gsettings set "$SCHEMA" cursor-color "#30383b"

unset SCHEMA
