# Fix touchpad palming issues

Uses `libinput`.  [Notes](http://askubuntu.com/questions/649103/proper-touchpad-thumb-palm-detection-with-libinput/678122#678122)

1. `sudo apt-get install xserver-xorg-input-libinput`
2. `sudo vim /usr/share/X11/xorg.conf.d/40-libinput.conf`


Edit the touchpad secion like this:

```
Section "InputClass"
    Identifier "libinput touchpad catchall"
    MatchIsTouchpad "on"
    MatchDevicePath "/dev/input/event*"
    Driver "libinput"
    Option "Tapping" "True"
    Option "DisableWhileTyping" "True"
    Option "PalmDetection" "True"
    Option "NaturalScrolling" "True"
    Option "TappingDragLock" "False"
EndSection
```
Add NaturalScrolling to the mouse "pointer" class also.

Also, trying libinput-gestures and it seems to work well for now.
https://github.com/bulletmark/libinput-gestures
