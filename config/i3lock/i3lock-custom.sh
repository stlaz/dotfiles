#!/bin/sh
# Script for i3lock-color

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#ff00ffcc'  # default
T='#ee00eeee'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying
BL='#000000bb' # black semi-transparent

i3lock \
--ringvercolor=$V     \
--insidevercolor=$BL   \
\
--ringwrongcolor=$W   \
--insidewrongcolor=$BL \
\
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1            \
--blur 7              \
--clock               \
--indicator           \
--timestr="%H:%M"  \
--datestr="%d.%m.%Y" \
--keylayout 2
# --insidecolor=$B      \
