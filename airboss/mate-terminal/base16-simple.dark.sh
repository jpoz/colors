#!/usr/bin/env bash
# Base16 Simple - Mate Terminal color scheme install script
# JPOZ (http://jpoz.net)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Simple Dark"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-simple-dark"
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
dset palette "'#242728:#E87364:#93D4AC:#F8D0A0:#43A9CF:#9581AD:#81B5BC:#aebabf:#526068:#E87364:#93D4AC:#F8D0A0:#43A9CF:#9581AD:#81B5BC:#f6f8f8'"
dset background-color "'#242728'"
dset foreground-color "'#aebabf'"
dset bold-color "'#aebabf'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
