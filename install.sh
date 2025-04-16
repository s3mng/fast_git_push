#!/bin/bash
TARGET="$HOME/.local/bin"
mkdir -p "$TARGET"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "$SCRIPT_DIR/fgp" "$TARGET/fgp"
chmod +x "$TARGET/fgp"
if [[ ":$PATH:" != *":$TARGET:"* ]]; then
  echo "export PATH=\"$TARGET:\$PATH\"" >> ~/.bashrc
fi
echo "Installation complete. Use 'fgp' command."