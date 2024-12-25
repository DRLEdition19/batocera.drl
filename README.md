<b><i>Versão atualizada do batocera.pro by DRLEdition</i></b><br>
<br>
<br>
Para istalar esta nova versão do batocera pro, basta realizar o procedimento antigo:
<br>
<br>
1º- No front-end do seu batocera, pressione a tecla de comando F1
<br>
<br>
2º- Ao abrir o gerenciador de arquivo, pressione a tecla de comando F4 para abrir o terminal
<br>
<br>
3º- Agora digite <b><i>curl -L bit.ly/bat-drl | bash</i></b> , pressione a tecla Enter e aguarde finalizar.
<br>
<br>
4º- Agora e só voltar ao front-end do batocera, ir no sistema Ports e procurar pelo Batocera.pro.
<br>
<br>
<b><i>5°- Me pague um café! 😊
<br>
Chave Pix:
<br>
351cbaac-cca8-46c5-aba9-fa495e3d352f</i></b>
<br>
<br>
6º- Ao encontrar o Batocera.Pro, execute-o e seja feliz.
<br>
<br>
<br>
  Esta versão do Batocera.pro, possui apenas algumas alterações em seus scripts para que os apps possam ser baixados e instalados normalmente no seu Batocera, visando não remover a essencia do antigo repositório do batocera Pro, que até então se encontra arquivado pelo desenvolverdor do projeto original. Você poderá verficicar o repositório original aqui: https://github.com/uureel/batocera.pro

<br>
  Esta versão, comocitado anteriormente, conta com apenas alterações de alguns links e servidores presentes nos scripts.
Também foi implementado a possibilidade de instalar o emulador de jogos em java J2me, que já vai com alguns jogos instalados, no entanto não são todos os jogos que são compatíveis. Sintase livre para criar um fork deste reposítório e melhorá-lo a seu modo.
<br>
<br>
Caso queira, você poderá instalar o app de maneira direta indo até o repositório e olhe o .sh para o instalador do que você quer instalar, se houver alguma menção de https://Batocera.pro, então não funcionará, mas se não houver menção, então ainda funcionará.
Usaremos como exemplo o script de instalação clonehero que puxa tudo diretamente do GitHub, então você pode instalá-lo com o seguinte comando;
<br>
<br>
curl -L https://github.com/uureel/batocera.pro/raw/main/clonehero/clonehero.sh | bash
<br>
<br>
<br>
<br>
<br>
<br>
<b><i># --------------------------------------------
# Versão antiga demontrada abaixo:
# --------------------------------------------
#</i></b><br>
<br>
<br>
<b><i>Unofficial Apps for Batocera x86_64 (AMD/Intel)</i></b><br>
<br>
<br>
</b>Most of these apps will be available in <i>F1-Applications</i> <br>
as normal desktop apps that stay running in background, so that <br>
you can Alt+Tab between them & use EmulationStation with them running. <br>
Some will also be available in <i>Ports</i> in EmulationStation. <br>
Docker/Podman, and Docker Apps are also available.<br>
There's also a few custom systems available, and a full Arch Container <br>
with Steam/Lutris/Heroic and more. <br>
The full Arch Container applist can be viewed via:<br>
```curl -L arch.batocera.pro | bash``` option 4 <br>
<br>
<br>
<b></i>HOW TO INSTALL: </font></b></i><br>
DOWNLOAD THE INSTALLER APP IN SSH/XTERM: ``` curl -L app.batocera.pro | bash ```<br>
AND THEN RUN IT FROM PORTS<br>
<br>
<b></i>HOW TO REMOVE AN APP: </font></b></i><br>
Remove the app folder in /userdata/system/pro/ and the launcher in ports if present, <br>
the icon in the F1-applications menu will disappear after restart.<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/app/pro.PNG" style="width:50%;height:auto;"/>
<br>
<br>
ALTERNATIVE INSTALL METHOD:<BR>
<br>
`  RUN THE FOLLOWING COMMANDS IN SSH/XTERM:  `
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/7zip/extra/icon.png" width=48 height=48 /><b><i>&nbsp;7ZIP </font></b></i><br>
```curl -L 7zip.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/86box/extra/icon.png" width=48 height=48 /><b><i>&nbsp;86BOX </font></b></i><br>
```curl -L 86box.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/altus/extra/icon.png" width=48 height=48 /><b><i>&nbsp;ALTUS </font></b></i><br>
```curl -L altus.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/amazonluna/extra/icon.png" width=48 height=48 /><b><i>&nbsp;AMAZON LUNA </i></b><br>
```curl -L amazonluna.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/droid.png" width=48 height=48 /><b><i>&nbsp;ANDROID/BLISS OS (Docker/QEMU)</i></b> <br>
```curl -L android.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/antimicrox/extra/icon.png" width=48 height=48 /><b><i>&nbsp;ANTIMICROX </font></b></i><br>
```curl -L antimicrox.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/appimage/extra/appimage.jpg" width=48 height=48 /><b><i>&nbsp;APPIMAGE PARSER (easily add AppImage Shortcuts to Ports) </font></b></i><br>
```curl -L appimage.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/applewin/extra/apple.png" width=48 height=48 /><b><i>&nbsp;APPLEWIN (WINE)</b></i><br>
```curl -L applewin.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/arch.png" width=48 height=48 /><b><i>&nbsp;ARCH CONTAINER (Conty) </font></b></i><br>
```curl -L arch.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/atom/extra/icon.png" width=48 height=48 /><b><i>&nbsp;ATOM </font></b></i><br>
```curl -L atom.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/shortcuts/images/Audacity-thumb.png"  width=48 height=48 /><b><i>&nbsp;AUDACITY (via Arch Container)</i></b> <br>
```curl -L arch.batocera.pro | bash``` 
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/balena/extra/icon.png" width=48 height=48 /><b><i>&nbsp;BALENA-ETCHER </font></b></i><br>
```curl -L balena.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/blender/extra/blender.png" width=48 height=48 /><b><i>&nbsp;BLENDER </font></b></i><br>
```curl -L blender.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/brave/extra/icon.png" width=48 height=48 /><b><i>&nbsp;BRAVE </font></b></i><br>
```curl -L brave.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/casaos.png" width=48 height=48 /><b><i>&nbsp;<a href="https://casaos.io" target="_blank">CASAOS</a> (Home Cloud/Debian Container/XFCE Desktop via RDP)</font></b></i><br>
```curl -L casaos.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/chiaki/extra/icon.png" width=48 height=48 /><b><i>&nbsp;CHIAKI </font></b></i><br>
```curl -L chiaki.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/chrome/extra/icon.png" width=48 height=48 /><b><i>&nbsp;CHROME</i></b> <br>
```curl -L chrome.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/chromium/extra/icon.png" width=48 height=48 /><b><i>&nbsp;CHROMIUM</i></b> <br>
```curl -L chromium.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/clonehero/extra/icon.png" width=48 height=48 /><b><i>&nbsp;CLONEHERO</i></b> <br>
```curl -L clonehero.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/cockatrice/extra/icon.png" width=48 height=48 /><b><i>&nbsp;COCKATRICE</i></b> <br>
```curl -L cockatrice.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/cpux/extra/icon.png" width=48 height=48 /><b><i>&nbsp;CPU-X</i></b> <br>
```curl -L cpux.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/discord/extra/icon.png" width=48 height=48 /><b><i>&nbsp;DISCORD</i></b> <br>
```curl -L discord.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/docker.png" width=48 height=48 /><b><i>&nbsp;DOCKER & PODMAN</i></b> <br>
```curl -L docker.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/doublecmd/extra/icon.png" width=48 height=48 /><b><i>&nbsp;DOUBLE-COMMANDER</i></b> <br>
```curl -L doublecmd.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/edge/extra/icon.png" width=48 height=48 /><b><i>&nbsp;EDGE</i></b><br>
```curl -L edge.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/EKA2L1/extra/icon.png" width=48 height=48 /><b><i>&nbsp;EKA2L1 </font></b></i><br>
```curl -L eka.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/emby.png" width=48 height=48 /><b><i>&nbsp;EMBY SERVER (Docker)</i></b><br>
```curl -L emby.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/blob/main/emudeck/extra/emudeck.jpg" width=48 height=48 /><b><i>&nbsp;EMUDECK (via Arch Container)</i></b><br>
```curl -L arch.batocera.pro | bash```  ```option 12```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/ferdium/extra/icon.png" width=48 height=48 /><b><i>&nbsp;FERDIUM</i></b><br>
```curl -L ferdium.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/filezilla/extra/icon.png" width=48 height=48 /><b><i>&nbsp;FILEZILLA</i></b><br>
```curl -L filezilla.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/firefox/extra/icon.png" width=48 height=48 /><b><i>&nbsp;FIREFOX</i></b><br>
```curl -L firefox.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/firefox/extra/nightly.png" width=48 height=48 /><b><i>&nbsp;FIREFOX-NIGHTLY</i></b><br>
```curl -L ffnightly.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/fightcade/extra/icong.png" width=48 height=48 /><b><i>&nbsp;FIGHTCADE 2 (via Arch Container)</i></b><br>
```curl -L fightcade.batocera.pro | bash```
<br>
<br>
<a href=https://github.com/mmtrt/foobar2000_AppImage>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/foobar/extra/icon.png" width=48 height=48 /></a>
<b><i>&nbsp;FOOBAR2000</i></b><br>
```curl -L foobar.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/gamelist-manager/extra/icon.png" width=48 height=48 /><b><i>&nbsp;GAMELIST-MANAGER</i></b><br>
```curl -L gm.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/geforcenow/extra/icon.png" width=48 height=48 /><b><i>&nbsp;GEFORCENOW</i></b><br>
```curl -L geforcenow.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/shortcuts/images/Gimp-thumb.png"  width=48 height=48 /><b><i>&nbsp;GIMP (via Arch Container)</i></b> <br>
```curl -L arch.batocera.pro | bash``` 
<br>
<br>
<a href=https://apprepo.de/appimage/gparted>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/gparted/extra/icon.png" width=48 height=48 /></a>
<b><i>&nbsp;GPARTED</i></b><br>
```curl -L gparted.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/greenlight/extra/icon.png" width=48 height=48 />
<b><i>&nbsp;GREENLIGHT</i></b><br>
```curl -L greenlight.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/gthumb/extra/icon.png" width=48 height=48 />
<b><i>&nbsp;GTHUMB</i></b><br>
```curl -L gthumb.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/hardinfo/extra/icon.png" width=48 height=48 />
<b><i>&nbsp;HARDINFO</i></b><br>
```curl -L hardinfo.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/heroic/extra/icon.png" width=48 height=48 />
<b><i>&nbsp;HEROIC-LAUNCHER </b></i></b><br>
```curl -L heroic.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/hulu/extra/icon.png" width=48 height=48 />
<b><i>&nbsp;HULU</i></b><br>
```curl -L hulu.batocera.pro | bash```
<br>
<br>
<a href=https://github.com/vercel/hyper>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/hyper/extra/icon.png" width=48 height=48 /></a>
<b><i>&nbsp;HYPER</i></b><br>
```curl -L hyper.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/shortcuts/images/Inkscape-thumb.png"  width=48 height=48 /><b><i>&nbsp;INKSCAPE (via Arch Container)</i></b> <br>
```curl -L arch.batocera.pro | bash``` 
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/itch/extra/icon.png" width=48 height=48 /></a>
<b><i>&nbsp;ITCH</i></b><br>
```curl -L itch.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/java/extra/icon.png" width=48 height=48 /></a>
<b><i>&nbsp;JAVA-RUNTIME</i></b><br>
```curl -L java.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/jellyfin.png" width=48 height=48 /></a>
<b><i>&nbsp;JELLYFIN SERVER (Docker)</i></b><br>
```curl -L jellyfin.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/kdenlive/extra/icon.png" width=48 height=48 /><b><i>&nbsp;KDENLIVE</i></b><br>
```curl -L kdenlive.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/kitty/extra/icon.png" width=48 height=48 /><b><i>&nbsp;KITTY</i></b><br>
```curl -L kitty.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/krita/extra/icon.png" width=48 height=48 /><b><i>&nbsp;KRITA</i></b><br>
```curl -L krita.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/ksnip/extra/ksnip.png" width=48 height=48 /><b><i>&nbsp;KSNIP</i></b><br>
```curl -L ksnip.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/shortcuts/images/Libreoffice-thumb.png"  width=48 height=48 /><b><i>&nbsp;LIBREOFFICE (via Arch Container)</i></b> <br>
```curl -L arch.batocera.pro | bash``` 
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/tux.png" width=48 height=48 /><b><i>&nbsp;LINUX XFCE/I3/MATE/KDE DESKTOPS (UBUNTU/FEDORA/ARCH/ALPINE distros via RDP/DOCKER)</i></b><br>
```curl -L rdp.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/tux.png" width=48 height=48 /><b><i>&nbsp;LINUX VIRTUAL MACHINES (via QEMU/DOCKER)</i></b><br>
```curl -L qemu.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/livecaptions/extra/icon.png" width=48 height=48 /><b><i>&nbsp;LIVECAPTIONS (SYSTEM-SETTINGS SERVICE)</i></b><br>
```curl -L livecaptions.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/logs/extra/icon.png" width=48 height=48 /><b><i>&nbsp;LOGS</i></b><br>
```curl -L logs.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/ludusavi/extra/icon.png" width=48 height=48 /><b><i>&nbsp;LUDUSAVI </i></b><br>
```curl -L ludusavi.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/lutris/icon.png" width=48 height=48 /><b><i>&nbsp;LUTRIS </b>(via Arch Container)</i></b><br>
```curl -L lutris.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/mediaelch/extra/icon.png" width=48 height=48 /><b><i>&nbsp;MEDIAELCH</i></b><br>
```curl -L mediaelch.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/minecraft/extra/icon.png" width=48 height=48 /><b><i>&nbsp;MINECRAFT (Java Edition)</i></b><br>
```curl -L minecraft.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/moonlight/extra/icon.png" width=48 height=48 /><b><i>&nbsp;MOONLIGHT</i></b><br>
```curl -L moonlight.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/mpv/extra/icon.png" width=48 height=48 /><b><i>&nbsp;MPV</i></b><br>
```curl -L mpv.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/multimc/extra/icon.png" width=48 height=48 /><b><i>&nbsp;MULTIMC-LAUNCHER</i></b><br>
```curl -L multimc.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/museeks/extra/icon.png" width=48 height=48 /><b><i>&nbsp;MUSEEKS</i></b><br>
```curl -L museeks.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/myretrotv/extra/myretrotv2.png" width=48 height=48 /><b><i>&nbsp;MYRETROTV</i></b><br>
```curl -L myretrotv.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/netboot.png" width=48 height=48 /><b><i>&nbsp;NETBOOT.XYZ SERVER (Docker)</i></b><br>
```curl -L netboot.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/netflix/extra/icon.png" width=48 height=48 /><b><i>&nbsp;NETFLIX</i></b><br>
```curl -L netflix.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/nextcloud.png" width=48 height=48 /><b><i>&nbsp;NEXTCLOUD (Docker)</i></b><br>
```curl -L nextcloud.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/nomacs/extra/icon.png" width=48 height=48 /><b><i>&nbsp;NOMACS</i></b><br>
```curl -L nomacs.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/nvtop/extra/gpu.png" width=48 height=48 /><b><i>&nbsp;NVTOP</i></b><br>
```curl -L nvtop.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/obs/extra/icon.png" width=48 height=48 /><b><i>&nbsp;OBS-STUDIO (via Arch Container)</i></b><br>
```curl -L arch.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/odio/extra/icon.png" width=48 height=48 /><b><i>&nbsp;ODIO</i></b><br>
```curl -L odio.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/olive/extra/icon.png" width=48 height=48 /><b><i>&nbsp;OLIVE</i></b><br>
```curl -L olive.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/opera/extra/icon.png" width=48 height=48 /><b><i>&nbsp;OPERA</i></b><br>
```curl -L opera.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/shortcuts/images/pcem.png"  width=48 height=48 /><b><i>&nbsp;PCEM (via Arch Container)</i></b> <br>
```curl -L arch.batocera.pro | bash``` 
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/peazip/extra/icon.png" width=48 height=48 /><b><i>&nbsp;PEAZIP</i></b><br>
```curl -L peazip.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/photocollage/extra/icon.png" width=48 height=48 /><b><i>&nbsp;PHOTOCOLLAGE</i></b><br>
```curl -L photocollage.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/plex.png" width=48 height=48 /><b><i>&nbsp;PLEX SERVER (Docker)</i></b><br>
```curl -L plex.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/plexamp/extras/plexamp.png" width=48 height=48 /><b><i>&nbsp;PLEXAMP</i></b><br>
```curl -L plexamp.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/pokemmo/extra/icon.png" width=48 height=48 /><b><i>&nbsp;POKEMMO</i></b><br>
```curl -L pokemmo.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/portainer.png" width=48 height=48 /><b><i>&nbsp;PORTAINER (Docker)</i></b><br>
```curl -L docker.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/prism-launcher/extra/icon.png" width=48 height=48 /><b><i>&nbsp;PRISM-LAUNCHER</i></b><br>
```curl -L prism.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/protonup-qt/extra/icon.png" width=48 height=48 /><b><i>&nbsp;PROTONUP-QT</i></b><br>
```curl -L protonup.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/ps2minus/extras/icon.png" width=48 height=48 /><b><i>&nbsp;PS2- (OLD PCSX2 V1.6, FOR CPUS WITHOUT SSE4.1)</i></b><br>
```curl -L ps2minus.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/ps2plus/extras/icon.png" width=48 height=48 /><b><i>&nbsp;PS2+ / PCSX2-QT-UPDATER</i></b><br>
```curl -L ps2plus.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/ps3plus/extras/icon.png" width=48 height=48 /><b><i>&nbsp;PS3+ / RPCS3-UPDATER (V38+) </i></b><br>
```curl -L ps3plus.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/qbittorrent/extra/icon.png" width=48 height=48 /><b><i>&nbsp;QBITTORRENT</i></b><br>
```curl -L qbittorrent.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/qdirstat/extra/icon.png" width=48 height=48 /><b><i>&nbsp;QDIRSTAT</i></b><br>
```curl -L qdirstat.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/rats/extra/icon.png" width=48 height=48 /><b><i>&nbsp;RATS-SEARCH</i></b> <br>
```curl -L rats.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/rhythmbox/extra/icon.png" width=48 height=48 /><b><i>&nbsp;RHYTHMBOX</i></b> <br>
```curl -L rhythmbox.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/sabnzbd.png" width=48 height=48 /><b><i>&nbsp;SABNZBD (Docker) </i></b> <br>
```curl -L sabnzbd.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/sak/extra/icon.png" width=48 height=48 /><b><i>&nbsp;SAK </i></b> <br>
```curl -L sak.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/sayonara/extra/icon.png" width=48 height=48 /><b><i>&nbsp;SAYONARA</i></b> <br>
```curl -L sayonara.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/sheepshaver/extra/SheepShaver.png" width=48 height=48 /><b><i>&nbsp;SHEEPSHAVER</i></b> <br>
```curl -L sheepshaver.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/shortcuts/images/Shotcut-thumb.png"  width=48 height=48 /><b><i>&nbsp;SHOTCUT (via Arch Container)</i></b> <br>
```curl -L arch.batocera.pro | bash``` 
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/smplayer/extra/icon.png" width=48 height=48 /><b><i>&nbsp;SMPLAYER</i></b> <br>
```curl -L smplayer.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/spotify/extra/icon.png" width=48 height=48 /><b><i>&nbsp;SPOTIFY</i></b> <br>
```curl -L spotify.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/icon.png" width=48 height=48 /><b><i>&nbsp;STEAM </b>(via Arch Container)</i></b> <br>
```curl -L steam.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/strawberry/extra/icon.png" width=48 height=48 /><b><i>&nbsp;STRAWBERRY</i></b> <br>
```curl -L strawberry.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/sublime/extra/icon.png" width=48 height=48 /><b><i>&nbsp;SUBLIME-TEXT</i></b><br>
```curl -L sublime.batocera.pro | bash```
<br>
<br> 
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/sunshine/extras/sunshine.png" width=48 height=48 /><b><i>&nbsp;SUNSHINE</i></b><br>
```curl -L sunshine.batocera.pro | bash```
<br>
<br> 
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/switch/extra/icon.png" width=48 height=48 /><b><i>&nbsp;SWITCH-EMULATION</i></b><br>
```curl -L switch.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/system-monitoring-center/extra/icon.png" width=48 height=48 /><b><i>&nbsp;SYSTEM-MONITORING-CENTER</i></b><br>
```curl -L smc.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/tabby/extra/icon.png" width=48 height=48 /><b><i>&nbsp;TABBY</i></b><br>
```curl -L tabby.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/telegram/extra/icon.png" width=48 height=48 /><b><i>&nbsp;TELEGRAM</i></b><br>
```curl -L telegram.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/totalcmd/extra/icon.png" width=48 height=48 /><b><i>&nbsp;TOTAL-COMMANDER</i></b><br>
```curl -L totalcmd.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/transmission/extra/icon.png" width=48 height=48 /><b><i>&nbsp;TRANSMISSION</i></b><br>
```curl -L transmission.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/virtualbox/extra/icon.png" width=48 height=48 /><b><i>&nbsp;VIRTUALBOX</i></b><br>
```curl -L virtualbox.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/vivaldi/extra/icon.png" width=48 height=48 /><b><i>&nbsp;VIVALDI</i></b><br>
```curl -L vivaldi.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/vlc/extra/icon.png" width=48 height=48 /><b><i>&nbsp;VLC</i></b><br>
```curl -L vlc.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/whatsapp/extra/icon.png" width=48 height=48 /><b><i>&nbsp;WHATSAPP</i></b><br>
```curl -L whatsapp.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/wiiuplus/extras/icon.png" width=48 height=48 /><b><i>&nbsp;WIIU+ / CEMU-UPDATER</i></b><br>
```curl -L wiiuplus.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/docker/extra/windows.png" width=48 height=48 /><b><i>&nbsp;WINDOWS XP, VISTA, 7, 8.1, 10, 11, SERVER VIRTUAL MACHINES (via HTTP-VNC/RDP/QEMU/Docker)</i></b><br>
```curl -L windows.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/wine-custom/icon/wine.png" width=48 height=48 /><b><i>&nbsp;WINE-CUSTOM & PROTON BUILD DOWNLOADER/INSTALLER (Vanilla & TKG-STAGING Kron4ek and WINE-GE-CUSTOM & GE-PROTON builds for v40+)</i></b><br>
```curl -L wine.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/winemanager/extra/icon.png" width=48 height=48 /><b><i>&nbsp;<a href=https://github.com/Gr3gorywolf/batocera_wine_manager>WINE-MANAGER by Gr3gorywolf</a></i></b><br>
```curl -L winemanager.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/wps-office/extra/icon.png" width=48 height=48 /><b><i>&nbsp;WPS OFFICE</i></b><br>
```curl -L wps.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/xarchiver/extra/icon.png" width=48 height=48 /><b><i>&nbsp;XARCHIVER</i></b><br>
```curl -L xarchiver.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/xcloud/extra/icon.png" width=48 height=48 /><b><i>&nbsp;XCLOUD</i></b><br>
```curl -L xcloud.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/yarg/extra/icon.png" width=48 height=48 /><b><i>&nbsp;YARG & YARC-Launcher</i></b><br>
```curl -L yarg.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/youtube-music/extra/icon.png" width=48 height=48 /><b><i>&nbsp;YOUTUBE MUSIC</i></b><br>
```curl -L ytm.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/youtubetv/extra/icon.png" width=48 height=48 /><b><i>&nbsp;YOUTUBE (TV UI)</i></b><br>
```curl -L yttv.batocera.pro | bash```
<br>
<br>
<img src="https://github.com/PixelNostalgia/batocera.pro.pixn/raw/main/steam/shortcuts/images/Zoom-thumb.png"  width=48 height=48 /><b><i>&nbsp;ZOOM (via Arch Container)</i></b> <br>
```curl -L arch.batocera.pro | bash``` 
<br>
<br>
<br>
<br>
<br>
<i>This is a small hobby repository in no way <br>
shape or form affiliated with Batocera </i><br>