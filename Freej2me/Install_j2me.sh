#!/bin/bash

# Mensagem de boas-vindas
echo "Seja bem vindo ao instalador automático do emulador de jogos J2me by Darley."

# Diretório temporário para download
TEMP_DIR="/userdata/tmp/freej2me"
DRL_FILE="$TEMP_DIR/freej2me.zip"
DEST_DIR="/"

# Cria o diretório temporário
echo "Criando diretório temporário para download..."
mkdir -p $TEMP_DIR

# Faz o download do arquivo drl 
echo "Fazendo download do arquivo freej2me.drl..."
curl -L -o $DRL_FILE "https://github.com/DRLEdition19/batocera.drl/releases/download/Batocera_Appimages/freej2me.zip"

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
rm -f $TEMP_DIR/freej2me.zip

# Função para criar link simbólico
criar_link() {
    origem="$1"
    destino="$2"

    # Verifica se o arquivo ou pasta de origem existe
    if [ ! -e "$origem" ]; then
        echo "ERRO: Origem '$origem' não encontrada."
        return 1
    fi

    # Verifica se o destino já existe e substitui automaticamente
    if [ -e "$destino" ] || [ -L "$destino" ]; then
        echo "Aviso: '$destino' já existe. Substituindo..."
        rm -rf "$destino"
    fi

    # Cria o link simbólico
    ln -s "$origem" "$destino" && echo "Link criado: $destino -> $origem"
}

# Criando os links simbólicos conforme as instruções
criar_link "/userdata/system/configs/bat-drl/AntiMicroX" "/opt/AntiMicroX"
criar_link "/media/SHARE_1/system/configs/bat-drl/AntiMicroX/antimicrox" "/usr/bin/antimicrox"
criar_link "/userdata/system/configs/bat-drl/Freej2me" "/opt/Freej2me"
criar_link "/userdata/system/configs/bat-drl/python2.7" "/usr/lib/python2.7"

echo "Processo concluído."

# Salva as alterações
echo "Salvando alterações..."
batocera-save-overlay 300

echo "Instalação concluída com sucesso."
