#!/bin/bash

# ----------------------------------------------------------------------
# This Script runs spell check for all files in the Details-app project
# Author: Ori Nahum
# Collaborator : Avishay Layani
# ----------------------------------------------------------------------

OUTPUT_FILE="/home/jenkins/workspace/pipeline_01_spellcheck/reports/spellcheck_results.md"

# initialize the output file
echo "==================" > $OUTPUT_FILE
echo "SpellCheck Results" >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Find all files with the specified document extensions under the directory provided as the first argument
find $1 -type f \( -name "*.txt" -o -name "*.md" -o -name "*.doc" -o -name "*.docx" \) | while read -r FILE
do
    # Log the file being processed to the output file
    echo "> File: $FILE" >> $OUTPUT_FILE

    # Use aspell to list misspelled words in the file, sort them uniquely, and process each word
    aspell list < "$FILE" | sort -u | while read WORD
    do
        # Find all occurrences of the misspelled word in the file with line numbers
        grep -n "$WORD" "$FILE" | while read -r LINE
        do
            # Extract line number and content from the grep output
            LINE_NUMBER=$(echo "$LINE" | cut -d: -f1)
            LINE_CONTENT=$(echo "$LINE" | cut -d: -f2- | sed 's/^[ \t]*//;s/[ \t]*$//')

            # Get suggestions for the misspelled word from aspell
            SUGGESTIONS=$(echo "$WORD" | aspell -a | awk -F ': ' '/^&/ {print $2}' | tr -s ' ' ',' | cut -d, -f1-2)

            # Log the line number, content, and the misspelled word to the output file
            echo " - line $LINE_NUMBER:" >> $OUTPUT_FILE
            echo "  * '$LINE_CONTENT'" >> $OUTPUT_FILE
            echo "  # '$WORD'" >> $OUTPUT_FILE

            # Log suggestions if available, otherwise note that no suggestions are available
            if [ -n "$SUGGESTIONS" ]; then
                echo "  + Suggestions: $SUGGESTIONS" >> $OUTPUT_FILE 
            else
                echo "  - No suggestions available" >> $OUTPUT_FILE
            fi
            echo "" >> $OUTPUT_FILE
        done
    done
done

# Notify the user that spell check results have been saved to the output file
echo "[v] Spell Check Results saved in $OUTPUT_FILE"