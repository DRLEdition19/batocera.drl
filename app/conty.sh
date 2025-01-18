#!/bin/bash

# Variables
CONTY_DIR="/userdata/system/pro/app/bin"
CONTY_DIR2="/userdata/system/pro/steam"
CONTY_URL="https://github.com/DRLEdition19/batocera.drl/releases/download/Batocera_Appimages/conty.sh"
CONTY_BIN="/usr/bin/conty"

# Create directory if it doesn't exist
mkdir -p "$CONTY_DIR"
mkdir -p "$CONTY_DIR2"

# Download the latest version of conty.sh
echo "Downloading the latest version of conty..."
curl -L -o "$CONTY_DIR/conty.sh" "$CONTY_URL"
curl -L -o "$CONTY_DIR2/conty.sh" "$CONTY_URL"

# Check if download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download conty.sh. Exiting."
    exit 1
fi

# Make conty.sh executable
chmod +x "$CONTY_DIR/conty.sh"
chmod +x "$CONTY_DIR2/conty.sh"

# Create symlink only if it doesn't already exist
if [ ! -L "$CONTY_BIN" ]; then
    echo "Creating symlink in /usr/bin..."
    ln -s "$CONTY_DIR/conty.sh" "$CONTY_BIN"
    echo "Symlink created: $CONTY_BIN -> $CONTY_DIR/conty.sh"
else
    echo "Symlink already exists at $CONTY_BIN. Skipping."
fi

echo "Conty setup completed!"

