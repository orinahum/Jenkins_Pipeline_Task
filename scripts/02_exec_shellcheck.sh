#!/bin/bash

# -------------------------------------------------------------
# This Scrips find all .sh scripts and runs shellcheck on them
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# -------------------------------------------------------------

if [[ ! -d "/tmp/Details_App/" ]];
then
    mkdir reports
fi

OUTPUT_FILE="reports/shellcheck_results.md"
PATHS_LOCATION=("." "/tmp/Details_App/.")

# initialize the output file
echo "==================" > $OUTPUT_FILE
echo "ShellCheck Results" >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE

# loop through all directories and find .sh files
for LOCATION in "${PATHS_LOCATION[@]}"
do
    if [[ $LOCATION != '' ]];
    then
        find $LOCATION -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE
        echo '-----------' >> $OUTPUT_FILE
    else
        echo "[-] Location was not provided"
    fi
done

echo "[v] Shell Check Results saved in $OUTPUT_FILE"

