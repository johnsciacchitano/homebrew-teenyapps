#!/bin/bash
# update-cask.sh — Bump a cask's version + sha256 in place.
#
# Usage: ./bin/update-cask.sh <cask-slug> <version> <path-to-dmg>
# Example: ./bin/update-cask.sh teenyclip 1.2.0 ~/Desktop/TeenyClip-1.2.0.dmg
#
# Intended to be called from each app's release.sh AFTER the DMG is
# notarized and copied to downloads/. Does NOT git commit — caller is
# responsible for reviewing the diff and committing.

set -euo pipefail

SLUG="${1:?Usage: $0 <cask-slug> <version> <dmg-path>}"
VERSION="${2:?Usage: $0 <cask-slug> <version> <dmg-path>}"
DMG_PATH="${3:?Usage: $0 <cask-slug> <version> <dmg-path>}"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CASK_FILE="$SCRIPT_DIR/../Casks/${SLUG}.rb"

[[ -f "$CASK_FILE" ]] || { echo "Error: cask not found: $CASK_FILE"; exit 1; }
[[ -f "$DMG_PATH" ]] || { echo "Error: DMG not found: $DMG_PATH"; exit 1; }

SHA=$(shasum -a 256 "$DMG_PATH" | awk '{print $1}')

# Each cask file has exactly one top-level `version "..."` and one
# `sha256 "..."` line, so a plain in-place replacement is safe.
sed -i '' -E \
    -e "s/^([[:space:]]*)version \"[^\"]*\"/\\1version \"${VERSION}\"/" \
    -e "s/^([[:space:]]*)sha256 \"[^\"]*\"/\\1sha256 \"${SHA}\"/" \
    "$CASK_FILE"

echo "Updated ${SLUG}: version=${VERSION} sha256=${SHA}"
echo "Review the diff and commit when ready:"
echo "  git -C \"$SCRIPT_DIR/..\" diff Casks/${SLUG}.rb"
