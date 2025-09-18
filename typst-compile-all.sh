#!/usr/bin/env bash
# set -e
set -u
# set -x

for f in 0*.typ; do
  printf "Compiling %s... " "$f"
  typst compile "$f" "${f%.typ}.pdf" && echo "✓ Success: ${f%.typ}.pdf" || echo "✗ Failed: $f"
done
