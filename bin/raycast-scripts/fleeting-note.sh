#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Quick Fleeting Note
# @raycast.mode compact
# @raycast.packageName Obsidian
# @raycast.description Add fleeting note with timestamp filename
# @raycast.argument1 { "type": "text", "placeholder": "Your fleeting thought..." }

# 設定（スペースを含むパスを適切にクォート）
OBSIDIAN_VAULT_PATH="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents"
FLEETING_DIR="$OBSIDIAN_VAULT_PATH/01-Fleeting-Notes"
TODAY=$(date +%Y%m%d)
CURRENT_DATETIME=$(date +%Y%m%d-%H%M%S)
TIMESTAMP=$(date "+%H:%M")

# ディレクトリ存在確認（パスをクォート）
mkdir -p "$FLEETING_DIR"

# 今日のFleeting Noteファイルを検索（適切なクォート処理）
# find コマンドを使用してより安全に検索
TODAY_FILES=()
while IFS= read -r -d '' file; do
  TODAY_FILES+=("$file")
done < <(find "$FLEETING_DIR" -name "${TODAY}-*_fleeting.md" -print0 2>/dev/null | sort -rz)

if [ ${#TODAY_FILES[@]} -eq 0 ]; then
  # 今日のファイルが存在しない場合、新規作成
  FLEETING_FILE="$FLEETING_DIR/${CURRENT_DATETIME}_fleeting.md"

  # ファイル作成（パスを適切にクォート）
  cat >"$FLEETING_FILE" <<EOF
# Fleeting Notes - $(date +%Y-%m-%d)
Created: $(date "+%Y-%m-%d %H:%M:%S")

## Quick Captures

EOF
  echo "📝 Created new fleeting note: $(basename "$FLEETING_FILE")"
else
  # 最新のファイルを使用
  FLEETING_FILE="${TODAY_FILES[0]}"
  echo "📝 Using existing file: $(basename "$FLEETING_FILE")"
fi

# 内容追記（ファイルパスをクォート）
echo "- [$TIMESTAMP] $1" >>"$FLEETING_FILE"

# 成功メッセージ
echo "✅ Added to $(basename "$FLEETING_FILE"): $1"

# Obsidianで開く（オプション - 必要に応じてコメントアウト解除）
# VAULT_NAME="YourVaultName"  # 貴様のvault名に変更
# FILE_PATH="01-Fleeting-Notes/$(basename "$FLEETING_FILE")"
# # URLエンコード処理も必要な場合あり
# open "obsidian://open?vault=$VAULT_NAME&file=$FILE_PATH"
