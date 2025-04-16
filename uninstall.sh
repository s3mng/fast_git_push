#!/bin/bash
TARGET="$HOME/.local/bin/fgp"

[ -f "$TARGET" ] && { rm "$TARGET"; echo "Removed $TARGET"; } || echo "fgp not found at $TARGET"

[ -f ~/.bashrc ] && sed -i '' '/\.local\/bin/d' ~/.bashrc && echo "Updated ~/.bashrc"
[ -f ~/.zshrc ] && sed -i '' '/\.local\/bin/d' ~/.zshrc && echo "Updated ~/.zshrc"

echo "Uninstall complete."