#!/usr/bin/env bash
# grab date and time for backup directory naming
dtstr=$(date +"%Y-%m-%d_%H-%M-%S")
# display prompt
printf "\n Select an option:
┌──────────────────────────────────────┐
│ [1]  Svae current to brutalist-bw/   │
│ [2]  Save current to cards-bw/       │
│ [3]  Save current to fluid-light/    │
│ [4]  Save current to fluid-dark/     │
├──────────────────────────────────────┤
│ [10] Load brutalist-bw/              │
│ [20] Load cards-bw/                  │
│ [30] Load fluid-light/               │
│ [40] Load fluid-dark/                │
└──────────────────────────────────────┘
 [e]  Exit prompt

> "
read choice
# if-else tree
if [ $choice == "1" ]; then
	# prompt confirmation of overwrite
	printf "Confirm to overwrite all contents in sway-configs/v1-bw-brutalist/ [y/N]\n> "
	read confv1
	if [ $confv1 == "y" ]; then
		# copy current loaded configs to repo directory
		cp -r ~/.config/dunst/* "brutalist-bw/dunst/"
		cp -r ~/.config/waybar/* "brutalist-bw/waybar/"
		cp -r ~/.config/waybar/* "brutalist-bw/waybar/"
		cp -r ~/.config/sway/* "brutalist-bw/sway/"
		cp -r ~/.config/swaylock/* "brutalist-bw/swaylock/"
		sudo cp /usr/share/rofi/themes/brutalist-bw.rasi "brutalist-bw/rofi/themes/"
		echo "All config files copied to brutalist-bw/"
	elif [ $confv1 == "N" ]; then
		echo "Cancelled."
	fi
elif [ $choice == "2" ]; then
	# prompt confirmation of overwrite
	printf "Confirm to overwrite all contents in sway-configs/v2-bw-softened/ [y/N]\n> "
	read confv2
	if [ $confv2 == "y" ]; then
		# copy current loaded configs to repo directory
		cp -r ~/.config/dunst/* "cards-bw/dunst/"
		cp -r ~/.config/waybar/* "cards-bw/waybar/"
		cp -r ~/.config/waybar/* "cards-bw/waybar/"
		cp -r ~/.config/sway/* "cards-bw/sway/"
		cp -r ~/.config/swaylock/* "cards-bw/swaylock/"
		sudo cp /usr/share/rofi/themes/cards-bw.rasi "cards-bw/rofi/themes/"
		echo "All config files copied to cards-bw/"
	elif [ $confv2 == "N" ]; then
		echo "Cancelled."
	fi
elif [ $choice == "3" ]; then
	# prompt confirmation of overwrite
	printf "Confirm to overwrite all contents in sway-configs/v3-light-minimal/ [y/N]\n> "
	read confv3
	if [ $confv3 == "y" ]; then
		# copy current loaded configs to repo directory
		cp -r ~/.config/dunst/* "fluid-light/dunst/"
		cp -r ~/.config/waybar/* "fluid-light/waybar/"
		cp -r ~/.config/waybar/* "fluid-light/waybar/"
		cp -r ~/.config/sway/* "fluid-light/sway/"
		cp -r ~/.config/swaylock/* "fluid-light/swaylock/"
		sudo cp /usr/share/rofi/themes/fluid-light.rasi "cards-bw/rofi/themes/"
		echo "All config files copied to fluid-light/"
	elif [ $confv2 == "N" ]; then
		echo "Cancelled."
	fi
elif [ $choice == "4" ]; then
	# prompt confirmation of overwrite
	printf "Confirm to overwrite all contents in sway-configs/v3-light-minimal/ [y/N]\n> "
	read confv4
	if [ $confv4 == "y" ]; then
		# copy current loaded configs to repo directory
		cp -r ~/.config/dunst/* "fluid-dark/dunst/"
		cp -r ~/.config/waybar/* "fluid-dark/waybar/"
		cp -r ~/.config/waybar/* "fluid-dark/waybar/"
		cp -r ~/.config/sway/* "fluid-dark/sway/"
		cp -r ~/.config/swaylock/* "fluid-dark/swaylock/"
		sudo cp /usr/share/rofi/themes/fluid-dark.rasi "fluid-dark/rofi/themes/"
	elif [ $confv2 == "N" ]; then
		echo "Cancelled."
	fi
elif [ $choice == "10" ]; then
	# make backup directory
	mkdir -p "backups/backup-[$dtstr]/"
	mkdir -p "backups/backup-[$dtstr]/.root/"
	# copy root config files to backup
	cp -r /etc/xdg/dunst/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/xdg/waybar/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/sway/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/swaylock/ "backups/backup-[$dtstr]/.root/"
	cp -r /usr/share/rofi/ "backups/backup-[$dtstr]/.root/"
	# copy user config files to backup
	cp -r ~/.config/dunst/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/waybar/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/sway/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/swaylock/ "backups/backup-[$dtstr]/"
	echo "Existing config files copied to sway-configs/backups/backup-[$dtstr]/"
	# copy wallpapers to ~/Pictures
	mkdir -p ~/Pictures/sway-wallpapers/
	cp -r assets/wallpapers/* ~/Pictures/sway-wallpapers
	echo "Copied wallpapers to ~/Pictures/sway-wallpapers/"
	# copy v4-dark-minimal files to system
	cp -r brutalist-bw/dunst/* ~/.config/dunst/
	cp -r brutalist-bw/waybar/* ~/.config/waybar/
	cp -r brutalist-bw/sway/* ~/.config/sway/
	cp -r brutalist-bw/swaylock/* ~/.config/swaylock/
	### sudo cp -r brutalist-bw/rofi/* /usr/share/rofi/
	echo "All 'brutalist-bw' config files copied to default config locations."
	echo "Reloading sway..."
	swaymsg reload
	pkill dunst

	### TODO: Add operation success condition before echo
	echo "Configs have been applied."
elif [ $choice == "20" ]; then
	# make backup directory
	mkdir -p "backups/backup-[$dtstr]/"
	mkdir -p "backups/backup-[$dtstr]/.root/"
	# copy root config files to backup
	cp -r /etc/xdg/dunst/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/xdg/waybar/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/sway/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/swaylock/ "backups/backup-[$dtstr]/.root/"
	cp -r /usr/share/rofi/ "backups/backup-[$dtstr]/.root/"
	# copy user config files to backup
	cp -r ~/.config/dunst/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/waybar/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/sway/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/swaylock/ "backups/backup-[$dtstr]/"
	echo "Existing config files copied to sway-configs/backups/backup-[$dtstr]/"
	# copy wallpapers to ~/Pictures
	mkdir -p ~/Pictures/sway-wallpapers/
	cp -r assets/wallpapers/* ~/Pictures/sway-wallpapers
	echo "Copied wallpapers to ~/Pictures/sway-wallpapers/"
	# copy v4-dark-minimal files to system
	cp -r cards-bw/dunst/* ~/.config/dunst/
	cp -r cards-bw/waybar/* ~/.config/waybar/
	cp -r cards-bw/sway/* ~/.config/sway/
	cp -r cards-bw/swaylock/* ~/.config/swaylock/
	### sudo cp -r cards-bw/rofi/* /usr/share/rofi/
	echo "All 'cards-bw' config files copied to default config locations."
	echo "Reloading sway..."
	swaymsg reload
	pkill dunst

	### TODO: Add operation success condition before echo
	echo "Configs have been applied."
elif [ $choice == "30" ]; then
	# make backup directory
	mkdir -p "backups/backup-[$dtstr]/"
	mkdir -p "backups/backup-[$dtstr]/.root/"
	# copy root config files to backup
	cp -r /etc/xdg/dunst/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/xdg/waybar/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/sway/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/swaylock/ "backups/backup-[$dtstr]/.root/"
	cp -r /usr/share/rofi/ "backups/backup-[$dtstr]/.root/"
	# copy user config files to backup
	cp -r ~/.config/dunst/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/waybar/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/sway/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/swaylock/ "backups/backup-[$dtstr]/"
	echo "Existing config files copied to sway-configs/backups/backup-[$dtstr]/"
	# copy wallpapers to ~/Pictures
	mkdir -p ~/Pictures/sway-wallpapers/
	cp -r assets/wallpapers/* ~/Pictures/sway-wallpapers
	echo "Copied wallpapers to ~/Pictures/sway-wallpapers/"
	# copy v4-dark-minimal files to system
	cp -r fluid-light/dunst/* ~/.config/dunst/
	cp -r fluid-light/waybar/* ~/.config/waybar/
	cp -r fluid-light/sway/* ~/.config/sway/
	cp -r fluid-light/swaylock/* ~/.config/swaylock/
	### sudo cp -r fluid-light/rofi/* /usr/share/rofi/
	echo "All 'fluid-light' config files copied to default config locations."
	echo "Reloading sway..."
	swaymsg reload
	pkill dunst

	### TODO: Add operation success condition before echo
	echo "Configs have been applied."
elif [ $choice == "40" ]; then
	# make backup directory
	mkdir -p "backups/backup-[$dtstr]/"
	mkdir -p "backups/backup-[$dtstr]/.root/"
	# copy root config files to backup
	cp -r /etc/xdg/dunst/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/xdg/waybar/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/sway/ "backups/backup-[$dtstr]/.root/"
	cp -r /etc/swaylock/ "backups/backup-[$dtstr]/.root/"
	cp -r /usr/share/rofi/ "backups/backup-[$dtstr]/.root/"
	# copy user config files to backup
	cp -r ~/.config/dunst/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/waybar/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/sway/ "backups/backup-[$dtstr]/"
	cp -r ~/.config/swaylock/ "backups/backup-[$dtstr]/"
	echo "Existing config files copied to sway-configs/backups/backup-[$dtstr]/"
	# copy wallpapers to ~/Pictures
	mkdir -p ~/Pictures/sway-wallpapers/
	cp -r assets/wallpapers/* ~/Pictures/sway-wallpapers
	echo "Copied wallpapers to ~/Pictures/sway-wallpapers/"
	# copy v4-dark-minimal files to system
	cp -r fluid-dark/dunst/* ~/.config/dunst/
	cp -r fluid-dark/waybar/* ~/.config/waybar/
	cp -r fluid-dark/sway/* ~/.config/sway/
	cp -r fluid-dark/swaylock/* ~/.config/swaylock/
	### sudo cp -r fluid-dark/rofi/* /usr/share/rofi/
	echo "All 'fluid-dark' config files copied to default config locations."
	echo "Reloading sway..."
	swaymsg reload
	pkill dunst

	### TODO: Add operation success condition before echo
	echo "Configs have been applied."
elif [ $choice == "e" ]; then
	echo "Exiting..."
fi
