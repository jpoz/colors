# ~/.i3/config
# i3 config template
# Base16 Airboss by JPOZ (http://jpoz.net)
# template by Matt Parnell, @parnmatt

set $base00 #2B2D2E
set $base01 #393C3D
set $base02 #565A5C
set $base03 #82898D
set $base04 #959595
set $base05 #9CA299
set $base06 #CDD0CC
set $base07 #F0F0F0
set $base08 #FF5A5F
set $base09 #FFAA91
set $base0A #FFB400
set $base0B #8CE071
set $base0C #00D1C1
set $base0D #007A87
set $base0E #7B0051
set $base0F #B4A76C

client.focused $base0D $base0D $base00 $base01
client.focused_inactive $base02 $base02 $base03 $base01
client.unfocused $base01 $base01 $base03 $base01
client.urgent $base02 $base08 $base07 $base08

## remember to add the rest of your configuration

bar {
    ## remember to add your favourite status bar, i.e.,
    # status_command i3status
    
        colors {
        separator $base03
        background $base01
        statusline $base05
        focused_workspace $base0C $base0D $base00
        active_workspace $base02 $base02 $base07
        inactive_workspace $base01 $base01 $base03
        urgent_workspace $base08 $base08 $base07
    }
}


