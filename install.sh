#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "SCRIPT_DIR: $SCRIPT_DIR"

TARGET="$HOME/.local/bin"
mkdir -p "$TARGET"
SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "$SCRIPT_DIR/fgp" "$TARGET/fgp"
chmod +x "$TARGET/fgp"

# 사용 중인 셸에 따라 설정 파일 결정 (zsh이면 ~/.zshrc, 아니면 ~/.bashrc)
if [[ "$SHELL" == *"zsh" ]]; then
  CONFIG_FILE="$HOME/.zshrc"
else
  CONFIG_FILE="$HOME/.bashrc"
fi

# 설정 파일에 $HOME/.local/bin 경로가 이미 있는지 검사
if ! grep -q "$TARGET" "$CONFIG_FILE"; then
  echo "export PATH=\"$TARGET:\$PATH\"" >> "$CONFIG_FILE"
  echo "PATH 라인이 $CONFIG_FILE 에 추가되었습니다."
fi

echo "Installation complete. Use 'fgp' command."