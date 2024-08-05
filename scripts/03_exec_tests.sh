#!/bin/bash

# --------------------------------------------------------------------------------------------
# This Script sets up a Poetry environment, installs dependencies, and runs pytest on the Details_App project.
# Author: Ori Nahum
# Collaborator: Avishay Layani
# --------------------------------------------------------------------------------------------

# Define the paths for output files
OUTPUT_FILE="/home/jenkins/workspace/pipeline_03_tests/reports/03_pytest_results.md"
OUTPUT_HTML_FILE="/home/jenkins/workspace/pipeline_03_tests/reports/03_pytest_results.html"
HOME_DIR=$(pwd)

# Initialize the output file with headers
echo "==================" > $OUTPUT_FILE
echo "Pytest Results" >> $OUTPUT_FILE
echo "==================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Initialize a new Poetry environment in the application directory
poetry init --no-interaction --directory=$APP_DIR
# Generate the poetry.lock file without updating dependencies 
poetry lock # [--no-update]
# Add pytest-html as a dependency for generating HTML test reports
poetry add pytest-html
# Install project dependencies into the Poetry environment
poetry -C $APP_DIR install
# Set an environment variable for the test database
export TEST_DB=True
# Change directory to the application directory
cd $APP_DIR
# Run pytest and generate an HTML report
poetry run pytest --html=$OUTPUT_HTML_FILE # --self-contained-html 
# Run pytest and save the results to the markdown file
poetry run pytest > $OUTPUT_FILE
# Return to the original directory
cd $HOME_DIR
# Modify the HTML report to include a CSS stylesheet 
sed -i '3s/.*/<link rel="stylesheet" href="styles.css">/' $OUTPUT_HTML_FILE
# Exit the script
exit
