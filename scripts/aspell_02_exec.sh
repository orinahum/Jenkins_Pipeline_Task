#!/bin/bash

# ----------------------------------------------------------------------
# This Scrips runs spell check for all files in the Details-app project
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# ----------------------------------------------------------------------

OUTPUT_FILE="reports/spellcheck_results.md"
pwd
whoami
EXCLUDE_PATHS_FILES=(".git" ".DS_Store" ".jpi" ".key" ".enc" ".mp4" ".jpg" ".lock" ".jpi" ".css" "ico")

# initialize the output file
echo "==================" > $OUTPUT_FILE
echo "Spellcheck Results" >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# loop through all files and directories with excluding specified paths
find $1 -type f | while read -r FILE
do
    EXCLUDE=false
    for EXCLUDE_PATH in "${EXCLUDE_PATHS_FILES[@]}"
    do
        if [[ "$FILE" == *"$EXCLUDE_PATH"* ]]; then
            EXCLUDE=true
            break
        fi
    done

    if [ "$EXCLUDE" = false ]; then
        echo "> File: $FILE" >> $OUTPUT_FILE
        aspell list < "$FILE" | sort -u | while read WORD
        do
            grep -n "$WORD" "$FILE" | while read -r LINE
            do
                LINE_NUMBER=$(echo "$LINE" | cut -d: -f1)
                LINE_CONTENT=$(echo "$LINE" | cut -d: -f2- | sed 's/^[ \t]*//;s/[ \t]*$//')
                SUGGESTIONS=$(echo "$WORD" | aspell -a | awk -F ': ' '/^&/ {print $2}' | tr -s ' ' ',' | cut -d, -f1-2)
                echo " - line $LINE_NUMBER:" >> $OUTPUT_FILE
                echo "  * '$LINE_CONTENT'" >> $OUTPUT_FILE
                echo "  # '$WORD'" >> $OUTPUT_FILE
                if [ -n "$SUGGESTIONS" ]; then
                    echo "  + Suggestions: $SUGGESTIONS" >> $OUTPUT_FILE 
                    echo "" >> $OUTPUT_FILE
                else
                    echo "  - No suggestions available" >> $OUTPUT_FILE
                    echo "" >> $OUTPUT_FILE
                fi
            done
        done
    fi
done

echo "[v] Spell Check Results saved in $OUTPUT_FILE"
