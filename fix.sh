#!/bin/sh

# Persistent solution
# Available antennas: 1 and 2. Default value is 0 (auto)
# For the HP250G4 the physical antenna is connected to the first connector (ant_sel=1)
# The second parameter disables firmware power saving to avoid random disconnections (fwlps=0)
echo "options rtl8723be ant_sel=1 fwlps=0" | sudo tee /etc/modprobe.d/rtl8723be.conf

# Apply the patch now, without reboot
sudo modprobe -r rtl8723be
sudo modprobe rtl8723be ant_sel=1

echo "Done!"

