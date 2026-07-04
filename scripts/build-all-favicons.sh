#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BUILD="$ROOT/scripts/build-favicons.sh"

for site in \
  badboards \
  keristokstad \
  decathecting \
  civiccongruence \
  honor-flight \
  toolkit-badboards \
  communitymediavoices \
  orrerymap
do
  "$BUILD" "$ROOT/favicons/$site/favicon.svg" "$ROOT/favicons/$site"
done

echo "Built all favicon bundles in $ROOT/favicons/"
