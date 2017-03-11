# Wake from usb...
# I think this is working.

echo enabled | sudo tee /sys/bus/usb/devices/usb1/power/wakeup
echo enabled | sudo tee /sys/bus/usb/devices/usb2/power/wakeup
