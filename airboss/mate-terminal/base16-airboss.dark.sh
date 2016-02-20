#!/usr/bin/env bash
# Base16 Airboss - Mate Terminal color scheme install script
# JPOZ (http://jpoz.net)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Airboss Dark"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-airboss-dark"
[[ -z "$DCONFTOOL" ]] && DCONFTOOL=dconf
[[ -z "$BASE_KEY" ]] && BASE_KEY=/org/mate/terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

dset() {
  local key="$1"; shift
  local val="$1"; shift

  "$DCONFTOOL" write "$PROFILE_KEY/$key" "$val"
}

# Because gconftool doesn't have "append"
glist_append() {
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$DCONFTOOL" read "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "'$val'"
    } | head -c-1 | tr "\n" ,
  )"

  "$DCONFTOOL" write "$key" "[$entries]"
}

# Append the Base16 profile to the profile list
glist_append /org/mate/terminal/global/profile-list "$PROFILE_SLUG"

dset visible-name "'$PROFILE_NAME'"
dset palette "'#2B2D2E:#FF5A5F:#8CE071:#FFB400:#007A87:#7B0051:#00D1C1:#9CA299:#82898D:#FF5A5F:#8CE071:#FFB400:#007A87:#7B0051:#00D1C1:#F0F0F0'"
dset background-color "'#2B2D2E'"
dset foreground-color "'#9CA299'"
dset bold-color "'#9CA299'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
