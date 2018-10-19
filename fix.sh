#!/bin/sh

# Clone and install the latest drivers
# This is required since ubuntu drivers stopped accepting the ant_sel option.
sudo apt-get install linux-headers-generic build-essential
cd ..
git clone https://github.com/magnet-cl/rtlwifi_new
cd rtlwifi_new
make
sudo make install
cd ..
rm -rf rtlwifi_new


# Persistent solution
# Available antennas: 1 and 2. Default value is 0 (auto)
# For the HP250G4 the physical antenna is connected to the second connector (ant_sel=2)
# The second parameter disables firmware power saving to avoid random disconnections (fwlps=0)
echo "options rtl8723be ant_sel=2 fwlps=0" | sudo tee /etc/modprobe.d/rtl8723be.conf

# Apply the patch now, without reboot, unload existing module
sudo modprobe -r rtl8723be
# Load the new one
sudo modprobe rtl8723be ant_sel=2

echo "Done!"

