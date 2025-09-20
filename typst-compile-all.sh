#!/usr/bin/env bash
# set -e
set -u
# set -x

# ✔️ ✅

build_dir="wei-pdf"

if [ ! $# -eq 0 ]; then
  build_dir="${1}"
fi

mkdir -p "$build_dir"

printf "To \"%s\":\n" "$build_dir"
for f in 0*.typ; do
  printf "%-45s" "$f..."
  typst compile "$f" "$build_dir/${f%.typ}.pdf" && printf "✔️  %s.pdf\n" "${f%.typ}" || echo "❌ Failed: $f"
done
