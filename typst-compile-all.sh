#!/usr/bin/env bash
# set -e
set -u
# set -x

# ✔️ ✅

for f in 0*.typ; do
  printf "%-45s" "$f..."
  typst compile "$f" "${f%.typ}.pdf" && printf "✔️  %s.pdf\n" "${f%.typ}" || echo "❌ Failed: $f"
done
