#!/bin/bash

# --------------------------------------------------------------------------------------------
# This Script run poetry envierment and install dependancies for running pytest on Details_App
# Author: Ori Nahum
# Collaborator : Avishay Layani
# --------------------------------------------------------------------------------------------

OUTPUT_FILE="/home/jenkins/workspace/pipeline_03_tests/reports/04_pytest_results.md"
OUTPUT_HTML_FILE="/home/jenkins/workspace/pipeline_03_tests/reports/04_pytest_results.html"
HOME_DIR=$(pwd)
# initialize the output file
echo "==================" > $OUTPUT_FILE
echo "SpellCheck Results" >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

poetry init --no-interaction --directory=$APP_DIR
poetry lock [--no-update]
poetry add pytest-html
poetry -C $APP_DIR install
export TEST_DB=True
cd $APP_DIR
poetry run pytest --html=$OUTPUT_HTML_FILE --self-contained-html
echo $(ls -la)
poetry run pytest >> $OUTPUT_FILE
cd $HOME_DIR
exit
