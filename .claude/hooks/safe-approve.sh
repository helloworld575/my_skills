#!/bin/bash

# 从 stdin 读取 hook 输入
input=$(cat)
command=$(echo "$input" | jq -r '.tool_input.command // empty')

# 拒绝危险命令
dangerous_patterns=(
  "rm -rf /"
  "rm -rf ~"
  "rm -rf *"
  "> /dev/sda"
  "mkfs"
  "dd if="
  ":(){:|:&};:"
)

for pattern in "${dangerous_patterns[@]}"; do
  if [[ "$command" == *"$pattern"* ]]; then
    echo "BLOCKED: dangerous command detected" >&2
    exit 1
  fi
done

echo "approved"
exit 0
