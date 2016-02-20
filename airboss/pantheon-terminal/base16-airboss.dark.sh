#!/usr/bin/env bash
# Base16 Airboss - Pantheon Terminal color scheme install script
# JPOZ (http://jpoz.net)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#2B2D2E"
gsettings set "$SCHEMA" foreground "#9CA299"
gsettings set "$SCHEMA" palette "#2B2D2E:#FF5A5F:#8CE071:#FFB400:#007A87:#7B0051:#00D1C1:#9CA299:#82898D:#FF5A5F:#8CE071:#FFB400:#007A87:#7B0051:#00D1C1:#F0F0F0"
gsettings set "$SCHEMA" cursor-color "#393C3D"

unset SCHEMA
