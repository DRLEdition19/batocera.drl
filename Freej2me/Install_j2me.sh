#!/bin/bash

# Mensagem de boas-vindas
echo "Seja bem vindo ao instalador automático do emulador de jogos J2me by Darley."

# Diretório temporário para download
TEMP_DIR="/tmp/freej2me"
DRL_FILE="$TEMP_DIR/freej2me.drl"
DEST_DIR="/"

# Cria o diretório temporário
echo "Criando diretório temporário para download..."
mkdir -p $TEMP_DIR

# Faz o download do arquivo drl 
echo "Fazendo download do arquivo freej2me.drl..."
curl -L -o $DRL_FILE "https://github.com/DRLEdition19/batocera.drl/blob/main/Freej2me/extra/freej2me.drl"

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
curl -L "https://raw.githubusercontent.com/DRLEdition19/batocera.drl/refs/heads/main/java/java.sh" | bash

# Exclui o arquivo freej2me.drl do diretório raiz
echo "Excluindo o arquivo freej2me.drl do diretório raiz..."
rm -f /freej2me.drl

# Salva as alterações
echo "Salvando alterações..."
batocera-save-overlay 300

echo "Instalação concluída com sucesso."
