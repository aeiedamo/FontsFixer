#!/usr/bin/env bash

# This is the main scripts that runs other scripts depending on the language

listOfLangs=("Arabic")

mainLink="https://github.com/aeiedamo/FontsFixer/blob/main/"

echo "Select a language:"

select lang in "${listOfLangs[@]}"; do
	selectLang=$lang
done

curl -fsSL "$mainLink/scripts/$selectLang.sh" | sudo bash

echo "It's recommended to reboot after changing fonts settings. Do you want to reboot now?"
select res in "Yes" "No"; do
	if [ $res = "Yes" ]; then
		reboot
	fi
done
