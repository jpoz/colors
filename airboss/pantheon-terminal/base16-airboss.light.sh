#!/usr/bin/env bash
# Base16 Airboss - Pantheon Terminal color scheme install script
# JPOZ (http://jpoz.net)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#F0F0F0"
gsettings set "$SCHEMA" foreground "#565A5C"
gsettings set "$SCHEMA" palette "#F0F0F0:#FF5A5F:#8CE071:#FFB400:#007A87:#7B0051:#00D1C1:#9CA299:#82898D:#FF5A5F:#8CE071:#FFB400:#007A87:#7B0051:#00D1C1:#2B2D2E"
gsettings set "$SCHEMA" cursor-color "#2B2D2E"

unset SCHEMA
