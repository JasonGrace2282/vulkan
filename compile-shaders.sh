#!/bin/bash

SRC="src/shaders"
OUT="$SRC/compiled"
[ ! -d "$OUT" ] && mkdir -p "$OUT"

for file in "$SRC"/*; do
  if [[ -f "$file" ]]; then
    filename=$(basename -- "$file")
    glslc "$file" -o "$OUT/${filename%.*}.spv"
  fi
done
