#!/usr/bin/env bash
# Fetch an offline copy of Pathfinder 2e rules data (spells, feats, creatures, items, ...)
# into reference/pf2e (gitignored). Source: foundryvtt/pf2e (Apache-2.0 code; content under ORC/OGL).
# Re-run to update. Only the compendium JSON (packs/) is checked out, shallow.
set -euo pipefail
cd "$(dirname "$0")/.."
DEST=reference/pf2e
if [ -d "$DEST/.git" ]; then
  git -C "$DEST" pull --ff-only
else
  mkdir -p reference
  git clone --depth 1 --filter=blob:none --sparse https://github.com/foundryvtt/pf2e.git "$DEST"
  git -C "$DEST" sparse-checkout set packs/pf2e
fi
echo "PF2e data ready in $DEST/packs/pf2e"
