#!/usr/bin/env bash

FOCUSED="$(aerospace list-workspaces --focused)"
OCCUPIED="$(aerospace list-windows --all --format '%{workspace}' | sort -u)"

while IFS= read -r SID; do
  if ! grep -Fqx -- "$SID" <<< "$OCCUPIED"; then
    sketchybar --set "space.$SID" drawing=off
  elif [[ "$SID" == "$FOCUSED" ]]; then
    sketchybar --set "space.$SID" \
      drawing=on \
      background.drawing=on \
      background.color=0x44ffffff \
      icon.color=0xffffffff
  else
    sketchybar --set "space.$SID" \
      drawing=on \
      background.drawing=off \
      icon.color=0xffbbbbbb
  fi
done < <(aerospace list-workspaces --all)
