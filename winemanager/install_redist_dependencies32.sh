#!/bin/bash

# Script para automatizar a configuração de dependências avançadas para sistemas Windows no Batocera (32-bit)

# Diretório onde os executáveis serão armazenados
WINE_EXE_DIR="/userdata/system/wine/exe"

# Criar o diretório se não existir
echo "Criando diretório para armazenar executáveis, se não existir..."
mkdir -p "$WINE_EXE_DIR"

# Função para baixar e extrair arquivos
download_and_extract() {
    local url=$1         # URL do arquivo a ser baixado
    local output_dir=$2  # Diretório de saída onde o arquivo será armazenado
    local filename=$(basename "$url")  # Nome do arquivo extraído da URL
    
    # Baixar o arquivo usando wget
    echo "Baixando $filename..."
    wget -P "$output_dir" "$url"
    
    # Se o arquivo for um .7z, extrair com 7zr
    if [[ "$filename" == *.7z ]]; then
        echo "Extraindo $filename..."
        7zr x "$output_dir/$filename" -o"$output_dir"
        # Remover o arquivo .7z após extração
        rm "$output_dir/$filename"
    fi
}

# Baixar e extrair DirectX3D
echo "Baixando e extraindo DirectX3D..."
download_and_extract "https://batocera.org/users/liberodark/wine/directx.7z" "$WINE_EXE_DIR"

# Baixar Visual C++ Redistributable 2015-2019
echo "Baixando Visual C++ Redistributable 2015-2019 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2015_2019.exe"

# Baixar Visual C++ Redistributable 2019
echo "Baixando Visual C++ Redistributable 2019 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2019.exe"

# Baixar Visual C++ Redistributable 2017
echo "Baixando Visual C++ Redistributable 2017 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2017.exe"

# Baixar Visual C++ Redistributable 2015
echo "Baixando Visual C++ Redistributable 2015 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2015.exe"

# Baixar Visual C++ Redistributable 2013
echo "Baixando Visual C++ Redistributable 2013 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2013.exe"

# Baixar Visual C++ Redistributable 2012
echo "Baixando Visual C++ Redistributable 2012 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2012.exe"

# Baixar Visual C++ Redistributable 2010
echo "Baixando Visual C++ Redistributable 2010 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2010.exe"

# Baixar Visual C++ Redistributable 2008
echo "Baixando Visual C++ Redistributable 2008 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2008.exe"

# Baixar Visual C++ Redistributable 2005
echo "Baixando Visual C++ Redistributable 2005 (32-bit)..."
wget -P "$WINE_EXE_DIR" "https://batocera.org/users/liberodark/wine/vcredist_x86_2005.exe"

# Finalização
echo "Todos os arquivos foram baixados e armazenados em $WINE_EXE_DIR."
echo "Configurações avançadas para sistemas Windows no Batocera (32-bit) concluídas!"
