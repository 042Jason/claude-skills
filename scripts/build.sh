#!/usr/bin/env bash
# .skill 패키지 빌드 스크립트
# 사용법: ./scripts/build.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST="$ROOT/dist"
mkdir -p "$DIST"

for SKILL_DIR in "$ROOT"/skills/*/; do
  NAME="$(basename "$SKILL_DIR")"
  OUT="$DIST/$NAME.skill"
  echo "Building $NAME -> $OUT"
  rm -f "$OUT"
  (cd "$SKILL_DIR" && zip -r "$OUT" . -x "*.DS_Store" >/dev/null)
done

echo
echo "Built packages:"
ls -la "$DIST"/*.skill
