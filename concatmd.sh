CONTENT_DIR="content.bn"
OUTPUT_FILE="output.md"
echo "== Pankti Offline Doc Maker =="
FILES=$(find $CONTENT_DIR -iname "*.md")

echo "[+] Reading Markdown Files"
for file in $FILES; do
    echo "    * $file"
    cat $file | sed '/^+++$/,/^+++$/d' >> $OUTPUT_FILE
done
echo "[+] Finished Reading Markdown Files"

echo "[+] Converting To PDF"
pandoc output.md -o output.pdf \
    --pdf-engine typst \
    --toc \
    --toc-depth=3 \
    --number-sections \
    -V mainfont="Noto Serif Bengali" \
    --highlight-style=tango
echo "[+] Finished Converting To PDF"
