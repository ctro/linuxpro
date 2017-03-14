# Wake from usb...

I think this is working.
I want to be able to plug the laptop into monitor, and wake it with bluetooth keyboard/mouse

```
echo enabled | sudo tee /sys/bus/usb/devices/usb1/power/wakeup
echo enabled | sudo tee /sys/bus/usb/devices/usb2/power/wakeup
```

No, it's not.  it always goes back to disabled.
But I think things are working now.  🐉🐉🐉
I think the real fix here is 16.10, and setting to never sleep when plugged in.

