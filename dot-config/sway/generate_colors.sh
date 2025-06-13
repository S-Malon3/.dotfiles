COLORS_FILE=~/.config/colors/arizona.json

cat <<EOF
# Generated Sway colors
set \$base         $(jq -r '.base' $COLORS_FILE)
set \$mantle       $(jq -r '.mantle' $COLORS_FILE)
set \$text         $(jq -r '.text' $COLORS_FILE)
set \$accent       $(jq -r '.accent' $COLORS_FILE)
set \$accent_light $(jq -r '.accent_light' $COLORS_FILE)
set \$accent_dark  $(jq -r '.accent_dark' $COLORS_FILE)
set \$highlight    $(jq -r '.highlight' $COLORS_FILE)
EOF
