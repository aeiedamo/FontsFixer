#!/usr/bin/env bash

# This script is designed to change Arabic fonts

# Main link for configs
mainLink="https://github.com/aeiedamo/FontsFixer/blob/main/"
# Available font families
listofFontFam=("Noto" "Plex")
# Make a backup of the orgininal local fonts file
if [ -f /etc/fonts/local.conf ]; then
	mv /etc/fonts/local.conf /etc/fonts/local.conf.bak
fi

# Select Font family
echo "Select a font family [Note: Noto Fonts are the default]"
select fam in "${listofFontFam[@]}"; do
	selectFam=$fam
done

echo "Downloading and saving files..."
curl -fsSLo "/etc/fonts/Arabic-$selectFam.conf" "$mainLink/configs/Arabic-$selectFam.conf"
