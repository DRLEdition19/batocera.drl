#!/bin/bash

# Mensagem de boas-vindas
echo "Seja bem vindo ao instalador automático do emulador de jogos J2me by DRL Edition."

# Diretório temporário para download
TEMP_DIR="/userdata/tmp/freej2me"
DRL_FILE="$TEMP_DIR/freej2me.zip"
DEST_DIR="/"

# Cria o diretório temporário
echo "Criando diretório temporário para download..."
mkdir -p $TEMP_DIR

# Faz o download do arquivo drl 
echo "Fazendo download do arquivo freej2me.drl..."
curl -L -o $DRL_FILE "https://github.com/DRLEdition19/batocera.drl/blob/main/Freej2me2/extra/freej2me.zip"

# Extrai o arquivo drl com barra de progresso e altera permissões de cada arquivo extraído
echo "Extraindo o arquivo drl e definindo permissões para cada arquivo..."
unzip -o $DRL_FILE -d $TEMP_DIR | while IFS= read -r file; do
    if [ -f "$TEMP_DIR/$file" ]; then
        chmod 777 "$TEMP_DIR/$file"
    fi
done

# Copia os arquivos extraídos para o diretório raiz, substituindo os existentes
echo "Copiando arquivos extraídos para o diretório raiz..."
cp -r $TEMP_DIR/* $DEST_DIR

# Cria links simbólicos
echo "Criando links simbólicos..."

# Função para criar link simbólico e substituir se já existir
create_symlink() {
    local target=$1
    local link=$2
    if [ -e "$link" ]; then
        echo "Substituindo link simbólico existente: $link"
        rm -f "$link"
    fi
    ln -s "$target" "$link"
}

create_symlink "/userdata/system/configs/bat-drl/AntiMicroX" "/opt/AntiMicroX"
create_symlink "/userdata/system/configs/bat-drl/AntiMicroX/antimicrox" "/usr/bin/antimicrox"
create_symlink "/userdata/system/configs/bat-drl/Freej2me" "/opt/Freej2me"
create_symlink "/userdata/system/configs/bat-drl/Freej2me/freej2me.jar" "/userdata/bios/freej2me.jar"
create_symlink "/userdata/system/configs/bat-drl/Freej2me/freej2me-lr.jar" "/userdata/bios/freej2me-lr.jar"
create_symlink "/userdata/system/configs/bat-drl/Freej2me/freej2me-sdl.jar" "/userdata/bios/freej2me-sdl.jar"

# Defina o caminho do arquivo
FILE="/usr/share/batocera/configgen/configgen-defaults.yml"

# Adicione o conteúdo desejado ao arquivo
echo -e "\nj2me:\n  emulator: libretro\n  core:     freej2me" >> $FILE

# Defina as permissões necessárias para o arquivo
chmod 644 $FILE

# Define permissões para arquivos específicos
echo "Definindo permissões para arquivos específicos..."
chmod 777 /media/SHARE/system/configs/bat-drl/Freej2me/freej2me.sh
chmod 777 /userdata/system/configs/bat-drl/AntiMicroX/antimicrox
chmod 777 /userdata/system/configs/bat-drl/AntiMicroX/antimicrox.sh
chmod 777 $FILE

# Exclui o arquivo freej2me.zip do diretório raiz
echo "Excluindo o arquivo freej2me.zip do diretório raiz..."
rm -rf $TEMP_DIR/freej2me.zip
rm -rf /freej2me.zip

# Limpa o diretório temporário
echo "Limpando diretório temporário..."
rm -rf $TEMP_DIR

# Verifica se o diretório /userdata/system/pro/java existe
if [ -d "/userdata/system/pro/java" ]; then
    echo "O diretório /userdata/system/pro/java já existe. Finalizando o script."
    exit 0
fi

# Executa o script java.sh se o diretório /userdata/system/pro/java não existir
echo "Executando o script java.sh..."
curl -L "https://github.com/DRLEdition19/batocera.drl/raw/refs/heads/main/java/java-jdk19.sh" | bash

# Salva as alterações
echo "Salvando alterações..."
batocera-save-overlay 300

echo "Instalação concluída com sucesso."
