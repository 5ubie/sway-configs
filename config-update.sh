#!/usr/bin/env bash
# grab date and time for backup directory naming
dtstr=$(date +"%Y-%m-%d_%H-%M-%S")

# display prompt
printf "\nSelect an option:\n-----------------\n[1]  Copy current configs to 'v1' repo folder\n[2]  Copy current configs to 'v2' repo folder\n[3]  Copy current configs to 'v3' repo folder\n[10] Copy & load 'v1' config to system\n[20] Copy & load 'v2' config to system\n[30] Copy & load 'v3' config to system\n\n[e]  Exit prompt\n-----------------\n> "
read choice
# if-else tree
if [ $choice == "1" ]; then
	# prompt confirmation of overwrite
	printf "Confirm to overwrite all contents in sway-configs/v1-bw-brutalist/ [y/N]\n> "
	read confv1
	if [ $confv1 == "y" ]; then
		# copy current loaded configs to repo directory
		sudo cp /etc/xdg/dunst/dunstrc "v1-bw-brutalist/dunst/"
		sudo cp /etc/xdg/waybar/config "v1-bw-brutalist/waybar/"
		sudo cp /etc/xdg/waybar/style.css "v1-bw-brutalist/waybar/"
		sudo cp ~/.config/sway/config "v1-bw-brutalist/sway/"
		sudo cp ~/.config/swaylock/config "v1-bw-brutalist/swaylock/"
		echo "All 5 config files copied to sway-config/v1-bw-brutalist/"
	elif [ $confv1 == "N" ]; then
		echo "Cancelled."
	fi
elif [ $choice == "2" ]; then
	# prompt confirmation of overwrite
	printf "Confirm to overwrite all contents in sway-configs/v2-bw-softened/ [y/N]\n> "
	read confv2
	if [ $confv2 == "y" ]; then
		# copy current loaded configs to repo directory
		sudo cp /etc/xdg/dunst/dunstrc "v2-bw-softened/dunst/"
		sudo cp /etc/xdg/waybar/config "v2-bw-softened/waybar/"
		sudo cp /etc/xdg/waybar/style.css "v2-bw-softened/waybar/"
		sudo cp ~/.config/sway/config "v2-bw-softened/sway/"
		sudo cp ~/.config/swaylock/config "v2-bw-softened/swaylock/"
		echo "All 5 config files copied to sway-configs/v2-bw-softened/"
	elif [ $confv2 == "N" ]; then
		echo "Cancelled."
	fi
elif [ $choice == "3" ]; then
	# prompt confirmation of overwrite
	printf "Confirm to overwrite all contents in sway-configs/v3-light-minimal/ [y/N]\n> "
	read confv3
	if [ $confv3 == "y" ]; then
		# copy current loaded configs to repo directory
		sudo cp /etc/xdg/dunst/dunstrc "v3-light-minimal/dunst/"
		sudo cp /etc/xdg/waybar/config "v3-light-minimal/waybar/"
		sudo cp /etc/xdg/waybar/style.css "v3-light-minimal/waybar/"
		sudo cp ~/.config/sway/config "v3-light-minimal/sway/"
		sudo cp ~/.config/swaylock/config "v3-light-minimal/swaylock/"
		echo "All 5 config files copied to sway-configs/v3-light-minimal/"
	elif [ $confv2 == "N" ]; then
		echo "Cancelled."
	fi
elif [ $choice == "10" ]; then
	# make backup directory
	mkdir "backup-[$dtstr]/"
	mkdir "backup-[$dtstr]/dunst/"
	mkdir "backup-[$dtstr]/waybar/"
	mkdir "backup-[$dtstr]/sway/"
	mkdir "backup-[$dtstr]/swaylock/"
	# copy root config files to backup
	sudo cp /etc/xdg/dunst/dunstrc "backup-[$dtstr]/dunst/"
	sudo cp /etc/xdg/waybar/config "backup-[$dtstr]/waybar/"
	sudo cp /etc/xdg/waybar/style.css "backup-[$dtstr]/waybar/"
	sudo cp /etc/sway/config "backup-[$dtstr]/sway/config-[_etc_sway]"
	sudo cp /etc/swaylock/config "backup-[$dtstr]/swaylock/config-[_etc_swaylock]"
	# copy user config files to backup
	sudo cp ~/.config/sway/config "backup-[$dtstr]/sway/"
	sudo cp ~/.config/swaylock/config "backup-[$dtstr]/swaylock/"
	echo "Existing config files copied to sway-configs/backup-[$dtstr]/"
	
	# copy v1-bw-brutalist files to system
	sudo cp v1-bw-brutalist/dunst/dunstrc /etc/xdg/dunst/
	sudo cp v1-bw-brutalist/waybar/config /etc/xdg/waybar/
	sudo cp v1-bw-brutalist/waybar/style.css /etc/xdg/waybar/
	sudo cp v1-bw-brutalist/sway/config ~/.config/sway/
	sudo cp v1-bw-brutalist/swaylock/config ~/.config/swaylock/
	echo "All 'v1-bw-brutalist' config files copied to default config locations."
	# reload wm
	echo "Reloading sway..."
	swaymsg reload
	echo "Configs have been applied."
elif [ $choice == "20" ]; then
	# make backup directory
	mkdir "backup-[$dtstr]/"
	mkdir "backup-[$dtstr]/dunst/"
	mkdir "backup-[$dtstr]/waybar/"
	mkdir "backup-[$dtstr]/sway/"
	mkdir "backup-[$dtstr]/swaylock/"
	# copy root config files to backup
	sudo cp /etc/xdg/dunst/dunstrc "backup-[$dtstr]/dunst/"
	sudo cp /etc/xdg/waybar/config "backup-[$dtstr]/waybar/"
	sudo cp /etc/xdg/waybar/style.css "backup-[$dtstr]/waybar/"
	sudo cp /etc/sway/config "backup-[$dtstr]/sway/config-[_etc_sway]"
	sudo cp /etc/swaylock/config "backup-[$dtstr]/swaylock/config-[_etc_swaylock]"
	# copy user config files to backup
	sudo cp ~/.config/sway/config "backup-[$dtstr]/sway/"
	sudo cp ~/.config/swaylock/config "backup-[$dtstr]/swaylock/"
	echo "Existing config files copied to sway-config/backup-[$dtstr]/"
	# copy v2-bw-softened files to system
	sudo cp v2-bw-softened/dunst/dunstrc /etc/xdg/dunst/
	sudo cp v2-bw-softened/waybar/config /etc/xdg/waybar/
	sudo cp v2-bw-softened/waybar/style.css /etc/xdg/waybar/
	sudo cp v2-bw-softened/sway/config ~/.config/sway/
	sudo cp v2-bw-softened/swaylock/config ~/.config/swaylock/
	echo "All 'v2-bw-softened' config files copied to default config locations.\nReloading sway..."
	swaymsg reload
	echo "Configs have been applied."
elif [ $choice == "30" ]; then
	# make backup directory
	mkdir "backup-[$dtstr]/"
	mkdir "backup-[$dtstr]/dunst/"
	mkdir "backup-[$dtstr]/waybar/"
	mkdir "backup-[$dtstr]/sway/"
	mkdir "backup-[$dtstr]/swaylock/"
	# copy root config files to backup
	sudo cp /etc/xdg/dunst/dunstrc "backup-[$dtstr]/dunst/"
	sudo cp /etc/xdg/waybar/config "backup-[$dtstr]/waybar/"
	sudo cp /etc/xdg/waybar/style.css "backup-[$dtstr]/waybar/"
	sudo cp /etc/sway/config "backup-[$dtstr]/sway/config-[_etc_sway]"
	sudo cp /etc/swaylock/config "backup-[$dtstr]/swaylock/config-[_etc_swaylock]"
	# copy user config files to backup
	sudo cp ~/.config/sway/config "backup-[$dtstr]/sway/"
	sudo cp ~/.config/swaylock/config "backup-[$dtstr]/swaylock/"
	echo "Existing config files copied to sway-config/backup-[$dtstr]/"
	# copy v2-bw-softened files to system
	sudo cp v3-light-minimal/dunst/dunstrc /etc/xdg/dunst/
	sudo cp v3-light-minimal/waybar/config /etc/xdg/waybar/
	sudo cp v3-light-minimal/waybar/style.css /etc/xdg/waybar/
	sudo cp v3-light-minimal/sway/config ~/.config/sway/
	sudo cp v3-light-minimal/swaylock/config ~/.config/swaylock/
	echo "All 'v3-light-minimal' config files copied to default config locations.\nReloading sway..."
	swaymsg reload
	echo "Configs have been applied."
elif [ $choice == "e" ]; then
	echo "Exiting..."
fi
