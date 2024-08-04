#!/bin/bash

# Function to check if poetry is installed
function check_poetry {
    if ! command -v poetry &> /dev/null
    then
        echo "Poetry could not be found. Installing Poetry..."
        curl -sSL https://install.python-poetry.org | python3 -
        export PATH="$HOME/.local/bin:$PATH"
    else
        echo "Poetry is already installed."
    fi
}

# Function to install pytest-html using poetry
function install_pytest_html {
    echo "Adding pytest-html using Poetry..."
    poetry add pytest-html
}

# Check if Poetry is installed, and install it if necessary
check_poetry

# Ensure we are in a Poetry project, or create one if needed
if [ ! -f pyproject.toml ]; then
    echo "No pyproject.toml found. Initializing a new Poetry project..."
    poetry init --no-interaction
fi

# Install pytest-html using Poetry
install_pytest_html

echo "pytest-html has been installed successfully."