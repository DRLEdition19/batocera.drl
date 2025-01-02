#!/bin/bash

clear
dialog --msgbox "Note: Batocera.Pro is being updated, and from now on it is working normally. All scripts were updated by DRLEDITION." 20 70
clear

# Function to display animated title with colors
animate_title() {
    local text="BATOCERA PRO APP INSTALLER | UPDATED BY DRLEDITION"
    local delay=0.03
    local length=${#text}

    echo -ne "\e[1;36m"  # Set color to cyan
    for (( i=0; i<length; i++ )); do
        echo -n "${text:i:1}"
        sleep $delay
    done
    echo -e "\e[0m"  # Reset color
}

# Function to display animated border
animate_border() {
    local char="#"
    local width=50

    for (( i=0; i<width; i++ )); do
        echo -n "$char"
        sleep 0.02
    done
    echo
}

# Function to display controls
display_controls() {
    echo -e "\e[1;32m"  # Set color to green
    echo "Controls:"
    echo "  Navigate with up-down-left-right"
    echo "  Select app with A/B/SPACE and execute with Start/X/Y/ENTER"
    echo -e "\e[0m"  # Reset color
    sleep 4
}

# Function to display loading animation
loading_animation() {
    local delay=0.1
    local spinstr='|/-\'
    echo -n "Loading "
    while :; do
        for (( i=0; i<${#spinstr}; i++ )); do
            echo -ne "${spinstr:i:1}"
            echo -ne "\010"
            sleep $delay
        done
    done &
    spinner_pid=$!
    sleep 3
    kill $spinner_pid
    echo "Done!"
}

# Main script execution
clear
animate_border
animate_title
animate_border
display_controls

# Define an associative array for app names and their install commands
declare -A apps
apps=(
    # ... (populate with your apps as shown before)
    ["ARCH-CONTAINER"]="curl -L steam.batocera.pro | bash"
    ["7ZIP"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/7zip/7zip.sh | bash"
    ["86BOX"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/86box/86box.sh | bash"
    ["ALTUS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/altus/altus.sh | bash"
    ["AMAZON-LUNA"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/amazonluna/amazonluna.sh | bash"
    ["ANDROID/BLISS-OS/DOCKER/QEMU"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/bliss_install.sh | bash" 
    ["ANTIMICROX"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/antimicrox/antimicrox.sh | bash"
    ["APPIMAGE-PARSER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/appimage/install.sh | bash"
    ["APPLEWIN/WINE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/applewin/applewin.sh | bash"
    ["ATOM"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/atom/atom.sh | bash"
    ["BATTLE.NET-WINDOWS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/launchers/bn.sh | bash"
    ["BALENA-ETCHER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/balena/balena.sh | bash"
    ["BLENDER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/blender/blender.sh | bash"
    ["BRAVE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/brave/brave.sh | bash"
    ["CASAOS/CONTAINER/DEBIAN/XFCE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/casa.sh | bash"
    ["CHIAKI"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/chiaki/chiaki.sh | bash"
    ["CHROME"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/chrome/chrome.sh | bash"
    ["CHROMIUM"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/chromium/chromium.sh | bash"
    ["CLONEHERO"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/clonehero/clonehero.sh | bash"
    ["COCKATRICE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/cockatrice/cockatrice.sh | bash"
    ["CPU-X"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/cpux/cpux.sh | bash"
    ["DISCORD"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/discord/discord.sh | bash"
    ["DOCKER"]="curl -L  https://github.com/DRLEdition19/batocera.drl/raw/main/docker/install.sh | bash"    
    ["DOUBLE-COMMANDER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/doublecmd/doublecmd.sh | bash"
    ["EDGE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/edge/edge.sh | bash"
    ["EKA2L1"]="https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/EKA2L1/EKA2L1.sh | bash"
    ["EMUDECK/CONTAINER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/emudeck/download.sh | bash"
    ["EMBY/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/emby.sh | bash"
    ["FREEJ2ME"]="https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/Freej2me/Install_j2me.sh | bash"
    ["FERDIUM"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/ferdium/ferdium.sh | bash"
    ["FILEZILLA"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/filezilla/filezilla.sh | bash"
    ["FIREFOX"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/firefox/ff.sh | bash"
    ["FIREFOX-NIGHTLY"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/ffnightly/ffnightly.sh | bash"
    ["FIGHTCADE-2"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/fightcade/fightcade.sh | bash"
    ["FOOBAR2000"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/foobar/foobar.sh | bash"
    ["GAME-MANAGER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/gamelist-manager/gamelist-manager.sh | bash"
    ["GEFORCENOW"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/geforcenow/geforcenow.sh | bash"
    ["GPARTED"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/gparted/gparted.sh | bash"
    ["GREENLIGHT"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/greenlight/greenlight.sh | bash"
    ["GTHUMB"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/gthumb/gthumb.sh | bash"
    ["HARD-INFO"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/hardinfo/hardinfo.sh | bash"
    ["HEROIC-CONTAINER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/heroic-container/heroic.sh | bash"
    ["HEROIC-LAUNCHER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/heroic/install.sh | bash"
    ["HYPER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/hyper/hyper.sh | bash"
    ["HULU"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/hulu/hulu.sh | bash"
    ["ITCH"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/itch/itch.sh | bash"
    ["JAVA-RUNTIME"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/java/java.sh | bash"
    ["JELLYFIN/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/jellyfin.sh | bash"
    ["KDENLIVE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/kdenlive/kdenlive.sh | bash"
    ["KITTY"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/kitty/kitty.sh | bash"
    ["KSNIP"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/ksnip/ksnip.sh | bash"
    ["KRITA"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/krita/krita.sh | bash"
    ["LIVECAPTIONS/SERVICE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/livecaptions/livecaptions.sh | bash"
    ["LOGS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/logs/logs.sh | bash"
    ["LINUX-DESKTOPS-RDP/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/rdesktop.sh | bash"
    ["LINUX-VMS-ON-QEMU/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/qemu.sh | bash"
    ["LUDUSAVI"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/ludusavi/ludusavi.sh | bash"
    ["LUTRIS/CONTAINER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/lutris/lutris.sh | bash"
    ["MEDIAELCH"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/mediaelch/mediaelch.sh | bash"
    ["MINECRAFT-BEDROCK-EDITION"]="curL -L https://raw.githubusercontent.com/DRLEdition19/batocera.drl/main/bedrock/bedrock.sh"
    ["MINECRAFT-JAVA-EDITION"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/minecraft/minecraft.sh | bash"
    ["MOONLIGHT"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/moonlight/moonlight.sh | bash"
    ["MPV"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/mpv/mpv.sh | bash"
    ["MULTIMC-LAUNCHER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/multimc/multimc.sh | bash"
    ["MUSEEKS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/museeks/museeks.sh | bash"
    ["MYRETROTV"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/myretrotv/myretrotv.sh | bash"
    ["NETBOOT-DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/docker/netboot.sh | bash"
    ["NETFLIX"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/netflix/netflix.sh | bash"
    ["NEXTCLOUD/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/nextcloud.sh | bash" 
    ["NVTOP"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/nvtop/nvtop.sh | bash"   
    ["NOMACS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/nomacs/nomacs.sh | bash"
    ["OBS-STUDIO/CONTAINER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/obs/obs.sh | bash"
    ["ODIO"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/odio/odio.sh | bash"
    ["OLIVE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/olive/olive.sh | bash"
    ["OPERA"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/opera/opera.sh | bash"
    ["PEAZIP"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/peazip/peazip.sh | bash"
    ["PHOTOCOLLAGE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/photocollage/photocollage.sh | bash"
    ["PLEX/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/docker/plex.sh | bash"
    ["PLEXAMP"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/plexamp/installer.sh | bash"
    ["POKEMMO"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/pokemmo/pokemmo.sh | bash"
    ["PORTAINER/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/install.sh | bash"
    ["PRISM-LAUNCHER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/prism-launcher/prism.sh | bash"
    ["PROTONUP-QT"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/protonup-qt/protonup-qt.sh | bash"
    ["PS2-MINUS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/ps2minus/installer.sh | bash"
    ["PS2-PLUS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/ps2plus/installer.sh | bash"
    ["PS3-PLUS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/ps2plus/installer.sh | bash"
    ["QBITTORRENT"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/qbittorrent/qbittorrent.sh | bash"
    ["QDIRSTAT"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/qdirstat/qdirstat.sh | bash"
    ["RATS-SEARCH"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/rats/rats.sh | bash"
    ["RHYTHMBOX"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/rhythmbox/rhythmbox.sh | bash"
    ["SABNZBD/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/sabnzbd.sh | bash"
    ["SAK"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/sak/sak.sh | bash"
    ["SAYONARA"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/sayonara/sayonara.sh | bash"
    ["SHEEPSHAVER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/sheepshaver/install.sh | bash"
    ["SMPLAYER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/smplayer/smplayer.sh | bash"
    ["SPOTIFY"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/spotify/spotify.sh | bash"
    ["STEAM/CONTAINER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/steam/install_new.sh | bash"
    ["STRAWBERRY"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/strawberry/strawberry.sh | bash"
    ["SUBLIME-TEXT"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/sublime/sublime.sh | bash"
    ["SUNSHINE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/sunshine/installer.sh | bash"
    ["SWITCH-EMULATION-39/40"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/switch-new/system/switch/extra/batocera-switch-installer-v40.sh | bash"
    ["SWITCH-EMULATION-41+"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/switch-new/system/switch/extra/batocera-switch-installer.sh | bash"
#    ["SWITCH-EMULATION-OLD-TEST"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/switch/switch.sh | bash"
    ["SYSTEM-MONITORING-CENTER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/system-monitoring-center/system-monitoring-center.sh | bash"
    ["TABBY"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/tabby/tabby.sh | bash"
    ["THEME-ADWAITA-DARK"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/dark/dark.sh | bash"
    ["TELEGRAM"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/telegram/telegram.sh | bash"
    ["TOTAL-COMMANDER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/totalcmd/totalcmd.sh | bash"
    ["TRANSMISSION"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/transmission/transmission.sh | bash"
    ["VIRTUALBOX"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/virtualbox/vbox.sh | bash"
    ["VIVALDI"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/vivaldi/vivaldi.sh | bash"
    ["VLC"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/vlc/vlc.sh | bash"
    ["WEBAPPS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/webapps/install.sh | bash"
    ["WHATSAPP"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/whatsapp/whatsapp.sh | bash"
    ["WIIU-PLUS"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/wiiuplus/installer.sh | bash"
    ["XARCHIVER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/xarchiver/xarchiver.sh | bash"
    ["XCLOUD"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/xcloud/xcloud.sh | bash"
    ["WINDOWS-VMS/DOCKER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/docker/win.sh | bash"
    ["WINE-CUSTOM-DOWNLOADER/v40+"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/main/wine-custom/wine.sh | bash"
    ["WINE-DEPENDENCIES"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/winemanager/install_redist_dependencies.sh | bash"
    ["WINE-MANAGER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/winemanager/winemanager.sh | bash"
    ["WPS-OFFICE"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/wps-office/wps.sh | bash"
    ["YARG/YARC-LAUNCHER"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/yarg/yarg.sh | bash"
    ["YOUTUBE-MUSIC"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/youtube-music/ytm.sh | bash" 
    ["YOUTUBE-TV"]="curl -L https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/youtubetv/yttv.sh | bash"

    # Add other apps here
)

# Prepare array for dialog command, sorted by app name
app_list=()
for app in $(printf "%s\n" "${!apps[@]}" | sort); do
    app_list+=("$app" "" OFF)
done

# Show dialog checklist
cmd=(dialog --separate-output --checklist "Select applications to install or update:" 22 76 16)
choices=$("${cmd[@]}" "${app_list[@]}" 2>&1 >/dev/tty)

# Check if Cancel was pressed
if [ $? -eq 1 ]; then
    echo "Installation cancelled."
    exit
fi

# Install selected apps
for choice in $choices; do
    applink="$(echo "${apps[$choice]}" | awk '{print $3}')"
    rm /tmp/.app 2>/dev/null
    wget --tries=10 --no-check-certificate --no-cache --no-cookies -q -O "/tmp/.app" "$applink"
    if [[ -s "/tmp/.app" ]]; then 
        dos2unix /tmp/.app 2>/dev/null
        chmod 777 /tmp/.app 2>/dev/null
        clear
        loading_animation
        sed 's,:1234,,g' /tmp/.app | bash
        echo -e "\n\n$choice DONE.\n\n"
    else 
        echo "Error: couldn't download installer for ${apps[$choice]}"
    fi
done

# Reload ES after installations
curl http://127.0.0.1:1234/reloadgames

echo "Exiting."

