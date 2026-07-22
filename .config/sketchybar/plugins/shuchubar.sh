#!/bin/sh

CONTAINER_STATUS="$HOME/Library/Containers/org.h405u.shuchubar/Data/Library/Application Support/ShuchuBar/sketchybar-status.json"
UNSANDBOXED_STATUS="$HOME/Library/Application Support/ShuchuBar/sketchybar-status.json"

if [ -f "$CONTAINER_STATUS" ]; then
  STATUS_FILE="$CONTAINER_STATUS"
else
  STATUS_FILE="$UNSANDBOXED_STATUS"
fi

label=""
if pgrep -qx ShuchuBar && [ -f "$STATUS_FILE" ]; then
  label=$(/usr/bin/plutil -extract label raw -o - "$STATUS_FILE" 2>/dev/null || true)
fi

sketchybar --set "$NAME" label="$label"
