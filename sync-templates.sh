#!/bin/bash
DEST="/boot/config/plugins/community.applications/private/sazap10"
REPO="sazap10/unraid-templates"

mkdir -p "$DEST"

curl -sf "https://api.github.com/repos/${REPO}/contents/templates" \
  | jq -r '.[] | select(.type == "file" and (.name | endswith(".xml"))) | .download_url' \
  | while read -r url; do
      file=$(basename "$url")
      curl -sf -o "${DEST}/${file}" "$url"
      echo "Synced: ${file}"
    done
