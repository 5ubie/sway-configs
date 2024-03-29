# A Collection of Sway Config Files
Includes several themes which include my personal configs for `sway`, `swaylock(-effects)`, `waybar`, `dunst` and `rofi`.

There are no dependencies apart from the above packages and their dependencies. The `sway` configs contain references to [`grim`](https://github.com/emersion/grim) (`bindsym $mod+Shift+p`), [`kitty`](https://github.com/kovidgoyal/kitty) (terminal), and have a few window assignments. Modify these settings if needed.

My system font is `IBM Plex Sans` which should be downloadable through your package manager, but is also available [here](https://github.com/IBM/plex/releases/tag/v6.4.0).
## Themes
- **`brutalist-bw`** (Dec 2023)

	![v1 zoom screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v1-screenshot-zoom.png?raw=true)
	
	- A utilitarian, opaque black and white scheme with sharp, square edges
	- Can be used with both `swaylock` and `swaylock-effects`
- **`cards-bw`** (Jan 2024)

	![v2 zoom screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v2-screenshot-zoom.png?raw=true)
	
	- A friendlier black and white scheme with transparency, rounded edges and some use of blur
	- Requires `swaylock-effects` for screen blur and clock
		- Similar to [default config](https://github.com/mortie/swaylock-effects?tab=readme-ov-file#swaylock-effects) but cleaner, monochrome
		- To use with `swaylock`, remove lines `1`-`14` and set a background image or color of your choosing
- **`fluid-light`** (Jan 2024)
	
	![v3 zoom screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v3-screenshot-zoom.png?raw=true)
	
	- A minimal, flat and mostly white scheme with subtle highlighting and transparency throughout
	- Requires `swaylock-effects` for screen blur and clock
		- To use with `swaylock`, remove lines `1`-`14`
- **`fluid-dark`** (Jan 2024)
	
	![v4 zoom screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v4-screenshot-zoom2.png?raw=true)
	- A minimal, sleek dark scheme with subtle gradient highlights and transparency throughout
		- Adds smooth transitions to conditional color accents
	- Requires `swaylock-effects` for screen blur and clock
		- To use with `swaylock`, remove lines `1`-`14`
## Usage
Themes can be managed with the `config-update.sh` bash script or manually copied into default config folders.
- The `sway` configs should be reviewed and modified before loading 
	- Input, output and keybind settings will likely have to be changed
- The script will automatically back up your existing configs before making any changes.
- Running the batch file and selecting one of the `[#]0` options (i.e. `10` or `20`) will copy the respective configs to the following locations:
	- dunst: `~/.config/dunst/`
	- sway: `~/.config/sway/`
	- swaylock: `~/.config/swaylock/`
	- waybar: `~/.config/waybar/`
	- rofi: `/usr/share/rofi/`
- Included wallpapers will be copied to `~/Pictures/sway-wallpapers/`
- Rofi themes will have to be manually set with rofi's theme selector

Single digit options (i.e. `1` or `2`) were made to make managing this repository easy for me, but they can also be used to quickly store modifications you've made to loaded configs.
## Notes
- I've tested all this on a laptop running Fedora 39, things might look different on different setups
- For displays > 1080p, font sizes will probably need to be changed
### Todo
- [x] Handle included wallpaper better: have script copy to a designated directory, reflect in configs
- [x] Add a handful of extra wallpaper options
- [x] Add rofi themes + script implementation
- [x] Update fluid rofi themes
- [ ] Change directory for rofi themes to `./local/...`
- [ ] Incorporate some gradients and transitions from `fluid-dark` into `fluid-light`
- [ ] *Make some more colorful themes with more eyecandy*
	- *Terminal schemes like everforest, rose pine, nord, catpuccin, solarized, tokyo night, etc.*
	- *More animations and transitions*
- [x] *Transition to a simpler theme naming scheme*
	- *Something like: `[style]-[color scheme]-[iteration]`*

Long term:
- [ ] Make new `sway` configs that omit modified input/output/keybind settings, add respective install options in the script
- [ ] Clean up config and .css files - more consistent and readable
- [ ] *Add some sort of `stow` support*
### More Screenshots
| `brutalist-bw` | ![v1 full screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v1-screenshot.png?raw=true)![v1 swaylock pic](https://github.com/5ubie/sway-configs/blob/main/assets/v1-swaylock-pic.jpg?raw=true) |
| ---- | ---- |
| **`cards-bw`** | ![v2 full screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v2-screenshot.png?raw=true)![v2 swaylock pic](https://github.com/5ubie/sway-configs/blob/main/assets/v2-swaylock-pic.jpg?raw=true) |
| **`fluid-light`** | ![v3 full screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v3-screenshot.png?raw=true) |
| **`fluid-dark`** | ![v4 full screenshot](https://github.com/5ubie/sway-configs/blob/main/assets/v4-screenshot2.png?raw=true)  |

(I don't know how to take a screenshot of swaylock lol)