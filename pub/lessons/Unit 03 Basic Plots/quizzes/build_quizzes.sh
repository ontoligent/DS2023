#!/usr/bin/env bash
#
# build_quizzes.sh
# Convert every *_quiz.txt file in this folder to a Canvas-importable QTI .zip
# using text2qti (https://github.com/gpoore/text2qti).
#
# Usage:
#   ./build_quizzes.sh            # convert all *_quiz.txt in this folder
#   ./build_quizzes.sh a.txt b.txt  # convert only the named files
#
# The resulting .zip files are imported into Canvas via:
#   Settings -> Import Course Content -> QTI .zip file
#
set -euo pipefail

# Work from the directory this script lives in, so it can be run from anywhere.
cd "$(dirname "$0")"

# Ensure text2qti is available; install into the current environment if not.
if ! python3 -c "import text2qti" >/dev/null 2>&1; then
    echo "text2qti not found. Installing..."
    python3 -m pip install --quiet text2qti
fi

# Locate the text2qti command. It ships as a console script (no __main__),
# so prefer the installed executable; fall back to the one next to python3.
if command -v text2qti >/dev/null 2>&1; then
    T2Q=(text2qti)
else
    T2Q=("$(dirname "$(command -v python3)")/text2qti")
fi

# Determine which files to convert.
if [ "$#" -gt 0 ]; then
    files=("$@")
else
    # Nullglob so the loop is skipped cleanly if nothing matches.
    shopt -s nullglob
    files=(*_quiz.txt)
    shopt -u nullglob
fi

if [ "${#files[@]}" -eq 0 ]; then
    echo "No *_quiz.txt files found in $(pwd)."
    exit 1
fi

count=0
for f in "${files[@]}"; do
    if [ ! -f "$f" ]; then
        echo "Skipping '$f' (not found)."
        continue
    fi
    echo "Converting: $f"
    "${T2Q[@]}" "$f"
    count=$((count + 1))
done

echo "Done. Converted $count file(s). Upload the resulting .zip file(s) to Canvas."
