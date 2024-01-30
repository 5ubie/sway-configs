# A Collection of Sway Config Files
## Overview
Includes several "themes" which include my personal configs for `sway`, `swaylock(-effects)`, `waybar` and `dunst`.

There are no dependencies apart from the above packages and their dependencies. The `sway` configs contain references to [`grim`](https://github.com/emersion/grim) (`bindsym $mod+Shift+p`), [`rofi`](https://github.com/davatorium/rofi) (default launcher), [`kitty`](https://github.com/kovidgoyal/kitty) (terminal), and have a few window assignments. Modify these settings if needed.

My system font is `IBM Plex Sans` which should be downloadable through your package manager, but is also available [here](https://github.com/IBM/plex/releases/tag/v6.4.0).

(I'm not smart enough to actually get a screenshot of swaylock lol)
#### List of themes:
- **`v1-bw-brutalist`**

	![v1 zoom screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v1-screenshot-zoom.png?raw=true)
	
	- A utilitarian, opaque black and white scheme with sharp, square edges
	- Can be used with both `swaylock` and `swaylock-effects`
- **`v2-bw-softened`**

	![v2 zoom screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v2-screenshot-zoom.png?raw=true)
	
	- A friendlier black and white scheme with transparency, rounded edges and some use of blur
	- Requires `swaylock-effects` for screen blur and clock
		- To use with `swaylock`, remove lines `1`-`14` and set a background image or color of your choosing
- **`v3-light-minimal`**
	
	![v3 zoom screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v3-screenshot-zoom.png?raw=true)
	
	- A minimal, flat and mostly white scheme with subtle highlighting and transparency throughout
	- Requires `swaylock-effects` for screen blur and clock
## Usage
Themes can be managed with the `config-update.sh` bash script or manually copied into default config folders.

The `sway` configs should be reviewed and modified before loading them - input, output and keybind settings will likely have to be changed. Do so by copying over parts of your own config file or by commenting them out entirely.

Once configs have been changed, running the batch file and selecting one of the `[#]0` options (i.e. `10` or `20`) will copy the respective configs to the following locations:
- dunst: `/etc/xdg/dunst/dunstrc`
- sway: `~/.config/sway/config`
- swaylock: `~/.config/swaylock/config`
- waybar: `/etc/xdg/waybar/config` and `/etc/xdg/waybar/style.css`

The script will automatically back up your existing configs before overwriting any system files.

Single digit options (i.e. `1` or `2`) were made to make managing this repository easy for me, but they can also be used to quickly store modifications you've made to loaded configs.

### Notes
- Some configs reference a wallpaper I have in my `~/Pictures` directory, this will need to be changed to a wallpaper of your choosing
	- The wallpaper visible in the screenshots above is included in `assets/wallpapers/`
- I've tested all this on a laptop running Fedora 39, things might look different on different setups

### More Screenshots
| `v1-bw-brutalist` | ![v1 full screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v1-screenshot.png?raw=true)![v1 swaylock pic](https://github.com/5ubie/sway-configs/blob/main/assets/v1-swaylock-pic.jpg?raw=true) |
| ---- | ---- |
| **`v2-bw-softened`** | ![v2 full screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v2-screenshot.png?raw=true)![v2 swaylock pic](https://github.com/5ubie/sway-configs/blob/main/assets/v2-swaylock-pic.jpg?raw=true) |
| **`v3-light-minimal`** | ![v3 full screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v3-screenshot.png?raw=true)![v2 swaylock pic](https://github.com/5ubie/sway-configs/blob/main/assets/v2-swaylock-pic.jpg?raw=true) |
