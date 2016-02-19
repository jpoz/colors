# ~/.i3/config
# i3 config template
# Base16 Simple by JPOZ (http://jpoz.net)
# template by Matt Parnell, @parnmatt

set $base00 #242728
set $base01 #30383b
set $base02 #3c474c
set $base03 #526068
set $base04 #768993
set $base05 #aebabf
set $base06 #e8e8e8
set $base07 #f6f8f8
set $base08 #E87364
set $base09 #F1A74F
set $base0A #F8D0A0
set $base0B #93D4AC
set $base0C #81B5BC
set $base0D #43A9CF
set $base0E #9581AD
set $base0F #C8B48C

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


