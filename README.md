
## dotfiles
![](https://gcdnb.pbrd.co/images/5mXoSbvCPIkK.png?o=1)
[Suckless](https://suckless.org/) configs and other environment settings.

**dwm** hotkeys:

 - slock
 - screenshot of the whole window and the selected area
 - volume control with alsamixer
 - microphone on/off 
 - brightness control
 - [togglefloatingcenter](https://dwm.suckless.org/patches/togglefloatingcenter/) patch
 - [fibonacci layouts](https://dwm.suckless.org/patches/fibonacci/) patch
the spiral layout is set as default

**dmenu**: 
- setting the color theme for st
- power menu script
- [password store](https://git.zx2c4.com/password-store/tree/contrib/dmenu) script
- [explore-with-dmenu](https://github.com/langenhagen/explore-with-dmenu) script

  (to support ranger: in `/usr/share/applications/ranger.desktop`, set the parameter "`Exec=st -e ranger`")
- [scrollback](https://st.suckless.org/patches/scrollback/) patches (ringbufer, mouse altscreen)

**st**: 
- paper dark color scheme
- [workingdir](https://st.suckless.org/patches/workingdir/) patch to support explore-from-dmenu

**slstatus**: volume state with alsamixer

**slock**:
turns the display off

---
**ranger**: 
- image previews via ueberzug
- parameter for audio playback via mpv

  `mpv --vo=null --vid=no --term-osd-bar --no-resume-playback "$@"`

