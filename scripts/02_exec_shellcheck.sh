#!/bin/bash

# -------------------------------------------------------------
# This Script finds all .sh scripts and runs ShellCheck on them.
# Author: Ori Nahum
# Collaborator: Avishay Layani
# -------------------------------------------------------------

# Check if the directory /tmp/Details_App/ exists; if not, create a reports directory
if [[ ! -d "/tmp/Details_App/" ]]; then
    mkdir reports
fi

# Define the output file where ShellCheck results will be saved
OUTPUT_FILE="reports/shellcheck_results.md"
# Define the paths where to search for .sh files
PATHS_LOCATION=("." "/tmp/Details_App/.")

# Initialize the output file with a header
echo "==================" > $OUTPUT_FILE
echo "ShellCheck Results" >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE

# Loop through all directories specified in PATHS_LOCATION and find .sh files
for LOCATION in "${PATHS_LOCATION[@]}"; do
    if [[ $LOCATION != '' ]]; then
        # Find .sh files in the current location and run ShellCheck on them
        find $LOCATION -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE
    else
        echo "[-] Location was not provided"
    fi
done

# Notify the user that the results have been saved
echo "[v] Shell Check Results saved in $OUTPUT_FILE"
