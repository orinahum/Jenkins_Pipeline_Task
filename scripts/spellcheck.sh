#!/bin/bash

TARGET_DIR="$1"

OUTPUT_FILE="spellcheck_results.md"
EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")

# initialize the output file
echo "==================" > $OUTPUT_FILE
echo "Spellcheck Results" >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# loop through all files and directories with excluding specified paths

find $TARGET_DIR -type f | while read -r FILE
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
        echo "* File: $FILE" >> $OUTPUT_FILE

        # aspell check for spelling
        aspell list < "$FILE" | sort -u | while read WORD
        do
            grep -n "$WORD" "$FILE" | while read -r LINE
            do
                LINE_NUMBER=$(echo "$LINE" | cut -d: -f1)
                LINE_CONTENT=$(echo "$LINE" | cut -d: -f2-)
                LINE_CONTENT=$(echo "$LINE_CONTENT" | sed 's/^[ \t]*//;s/[ \t]*$//')
                SUGGESTIONS=$(echo "$WORD" | aspell -a | grep "^&" | sed 's/^& //' | sed 's/^[^ ]* //' | sed 's/^[^:]*: //' | tr '\n' ',' | sed 's/,$//')
                NUM_SUGGESTIONS=$(echo "$SUGGESTIONS" | awk -F, '{print NF}')

                echo "- line $LINE_NUMBER:" >> $OUTPUT_FILE
                echo "  [?] '$LINE_CONTENT'" >> $OUTPUT_FILE
                echo "  [!] '$WORD'" >> $OUTPUT_FILE
                if [ -n "$SUGGESTIONS" ]; then
                    echo "  [+] Suggestions($NUM_SUGGESTIONS):" >> $OUTPUT_FILE 
                    echo "      $SUGGESTIONS" >> $OUTPUT_FILE
                    echo "" >> $OUTPUT_FILE
                else
                    echo "  [-] No suggestions available" >> $OUTPUT_FILE
                    echo "" >> $OUTPUT_FILE
                fi

            done
        done
        echo "" >> $OUTPUT_FILE
    fi
done

echo "[COMPLETE] Spell Check Results saved in $OUTPUT_FILE"
