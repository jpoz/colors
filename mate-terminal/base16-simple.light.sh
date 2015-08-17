#!/usr/bin/env bash
# Base16 Simple - Mate Terminal color scheme install script
# JPOZ (http://jpoz.net)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Simple Light"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-simple-light"
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
dset palette "'#f6f8f8:#ed735f:#8dd5aa:#fad19b:#967faf:#e88dc0:#34a7d2:#aebabf:#526068:#ed735f:#8dd5aa:#fad19b:#967faf:#e88dc0:#34a7d2:#242728'"
dset background-color "'#f6f8f8'"
dset foreground-color "'#3c474c'"
dset bold-color "'#3c474c'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
