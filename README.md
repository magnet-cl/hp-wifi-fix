# HP 250 G4 Wi-Fi fix
Bug fix for the Wi-Fi problem when using Ubuntu on a HP 250 G4. 

## Symptoms
* Wi-Fi works slowly
* Weak signal
* Random disconnections

This is a known issue with the RTL8723BE driver that happens when the notebook only has one of the two antennas attached.

## Solution
* Check you have the latest drivers
* Clone this project
* Run `./fix.sh`

Tested on Ubuntu 16.04
