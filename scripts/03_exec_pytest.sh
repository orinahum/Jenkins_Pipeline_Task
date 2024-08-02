#!/bin/bash

# ---------------------------------------------------------------------
# This Scrips find all .py files in Details_App and runs pytest on them
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# ---------------------------------------------------------------------

if [[ ! -d "/tmp/Details_App/" ]];
then
    mkdir reports
fi

OUTPUT_FILE="reports/pytest.md"
PATHS_LOCATION=("/tmp/Details_App/.")

# initialize the output file
echo "==================" > $OUTPUT_FILE
echo "  PyTest Results  " >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE

# loop through all directories and find .sh files
for LOCATION in "${PATHS_LOCATION[@]}"
do
    if [[ $LOCATION != '' ]];
    then
        # find $LOCATION -name  "*.py" -exec pytest {} + >> $OUTPUT_FILE
        find . -name "*.py" -exec pytest --junitxml=test-results.xml {} +
    else
        echo "[-] Location was not provided"
    fi
done

echo "[v] PyTest Results saved in $OUTPUT_FILE"
