#!/bin/env bash
echo "[+] STARTING"
CURDIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
OUTDIR="$CURDIR/public"
CONTENTDIR="$CURDIR/content"
echo "[+] DELETE OLD PUBLIC"
rm -rf public
echo "[+] CREATING PUBLIC DIR"
mkdir -p public
mkdir -p public/docs

echo "[+] BUILDING ->"
echo "  [+] INDEX"
pandoc --standalone --template template.html index.md -o "$OUTDIR/index.html"
echo "  [+] DOCS INDEX"
pandoc --standalone --template "$CURDIR/template.html" docs.md -o "$OUTDIR/docs/index.html"
echo "  [+] 404"
pandoc --standalone --template template.html 404.md -o "$OUTDIR/404.html"

echo "  [++]CONTENTS"
for file in content/*; do 
    if [ -f "$file" ]; then 
        FPATH="$file"
        FILENAME=$(basename "$file")
        NAME=$(basename "$file" .md)
        if [[ "$NAME" == "doc_"* ]]; then
            IFS='_' read -r -a names <<< "$NAME"
            NAME="${names[1]}"
            echo "[*] DOC -> $NAME"
            mkdir -p "$OUTDIR/docs/$NAME"
            pandoc --standalone --template "$CURDIR/template.html" "$FPATH" -o "$OUTDIR/docs/$NAME/index.html"
        else
            echo "[*] NORM -> $NAME"
            mkdir -p "$OUTDIR/$NAME"
            pandoc --standalone --template "$CURDIR/template.html" "$FPATH" -o "$OUTDIR/$NAME/index.html"
        fi
    fi 
done

echo "[+] COPYING STATICs"
cp -r "static" "$OUTDIR/"
echo "[+] FINISHED"

