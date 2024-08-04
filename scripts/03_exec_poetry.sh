#!/bin/bash

# --------------------------------------------------------------------------------------------
# This Script run poetry envierment and install dependancies for running pytest on Details_App
# Author: Ori Nahum
# Collaborator : Avishay Layani
# --------------------------------------------------------------------------------------------

OUTPUT_FILE="/home/jenkins/workspace/pipeline_03_tests/reports/04_pytest_results.md"
OUTPUT_HTML_FILE="/home/jenkins/workspace/pipeline_03_tests/reports/04_pytest_results.html"

# initialize the output file
echo "==================" > $OUTPUT_FILE
echo "SpellCheck Results" >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

poetry shell --directory=$APP_DIR
poetry -C $APP_DIR install
export TEST_DB=True
pytest $APP_DIR > $OUTPUT_FILE
pytest $APP_DIR --html=$OUTPUT_HTML_FILE
exit
