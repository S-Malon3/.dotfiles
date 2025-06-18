COLORS_FILE=~/.config/colors/arizona.json

cat << EOF
# Generated Ghostty colors
background           = $(jq -r '.base' $COLORS_FILE)
foreground           = $(jq -r '.text' $COLORS_FILE)
cursor-color         = $(jq -r '.accent_light' $COLORS_FILE)
cursor-text          = $(jq -r '.text' $COLORS_FILE)
selection-background = $(jq -r '.text' $COLORS_FILE)
selection-foreground = $(jq -r '.base' $COLORS_FILE)
EOF
#TODO rest of pallet
