#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <source.svg|source.png> <output-dir>"
  exit 1
fi

SOURCE="$1"
OUT_DIR="$2"
mkdir -p "$OUT_DIR"
MASTER="$OUT_DIR/_master.png"

if [[ "$SOURCE" == *.png || "$SOURCE" == *.PNG ]]; then
  convert "$SOURCE" -resize 512x512 "$MASTER"
  cp "$SOURCE" "$OUT_DIR/favicon-source.png"
elif [[ "$SOURCE" == *.svg || "$SOURCE" == *.SVG ]]; then
  if [[ "$(realpath "$SOURCE")" != "$(realpath "$OUT_DIR/favicon.svg")" ]]; then
    cp "$SOURCE" "$OUT_DIR/favicon.svg"
  fi
  rsvg-convert -w 512 -h 512 "$SOURCE" -o "$MASTER"
else
  echo "Unsupported source format: $SOURCE"
  exit 1
fi

convert "$MASTER" -resize 180x180 "$OUT_DIR/apple-touch-icon.png"
convert "$MASTER" -resize 16x16 "$OUT_DIR/favicon-16x16.png"
convert "$MASTER" \
  \( -clone 0 -resize 16x16 \) \
  \( -clone 0 -resize 32x32 \) \
  \( -clone 0 -resize 48x48 \) \
  -delete 0 "$OUT_DIR/favicon.ico"

rm "$MASTER"
echo "Built favicons in $OUT_DIR"
