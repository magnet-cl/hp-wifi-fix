# HP notebook Wi-Fi fix
Bug fix for the Wi-Fi problem when using Ubuntu on a HP notebook. 

## Symptoms
* Wi-Fi works slowly
* Weak signal
* Random disconnections
* No Wi-Fi

This is a known issue with the Realtek drivers that happens when the notebook only has one of the two antennas attached.

## Solution
* Check you have the latest drivers
* Clone this project
* Run `./fix.sh`

Tested on Ubuntu 16.04, 18.04
