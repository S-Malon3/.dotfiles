COLORS_FILE=~/.config/colors/arizona.json

cat << EOF
/* Generated Waybar colors */
@define-color background $(jq -r '.base' $COLORS_FILE);
@define-color foreground $(jq -r '.text' $COLORS_FILE);
@define-color accent $(jq -r '.accent' $COLORS_FILE);
@define-color accent_light $(jq -r '.accent_light' $COLORS_FILE);
@define-color accent_dark $(jq -r '.accent_dark' $COLORS_FILE);
@define-color highlight $(jq -r '.highlight' $COLORS_FILE);
@define-color contrast $(jq -r '.contrast' $COLORS_FILE);
EOF
