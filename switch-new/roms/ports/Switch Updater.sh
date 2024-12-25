#!/usr/bin/env bash
#####################################################################
#                      PORTS: SWITCH UPDATER                        #
#                  -----------------------------                    #
#    > github.com/DRLEdition19/batocera.drl/blob/main/switch-new    #
#####################################################################
updater=/userdata/system/switch/extra/batocera-switch-updater.sh
rm "$updater" 2>/dev/null 
wget -q --no-check-certificate --no-cache --no-cookies -O "$updater" "https://raw.githubusercontent.com/DRLEdition19/batocera.drl/refs/heads/main/switch-new/system/switch/extra/batocera-switch-updater.sh"
dos2unix "$updater"
chmod a+x "$updater"
bash /userdata/system/switch/extra/batocera-switch-updater.sh
