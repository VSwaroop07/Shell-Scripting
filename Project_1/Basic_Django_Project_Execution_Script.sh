#!/bin/bash

# Task: Clone and deploy a Django project through shell script

install_python() {
    echo "Installing Python and pip..."
    sudo apt update
    sudo apt install -y python3 python3-pip python3-venv
    if [ $? -ne 0 ]; then
        echo "Python installation failed"
        exit 1
    fi
    echo "Python installed successfully"
}

clone_code() {
    echo "Cloning the project from GitHub..."
    git clone https://github.com/VSwaroop07/price_comapre.git
    if [ $? -ne 0 ]; then
        echo "Code exists Already"
    fi
    echo "Code cloned successfully"
}

create_virtualenv() {
    echo "Creating virtual environment..."
    cd price_comapre || { echo "Project directory not found"; exit 1; }
    python3 -m venv venv
    if [ $? -ne 0 ]; then
        echo "Virtual environment creation failed"
        exit 1
    fi
    echo "Virtual environment created successfully"
}

install_requirements() {
    echo "Installing dependencies in virtual environment..."
    ./venv/bin/pip install --upgrade pip
    ./venv/bin/pip install -r requirements.txt
    if [ $? -ne 0 ]; then
        echo "Dependencies could not be installed"
        exit 1
    fi
    echo "Dependencies installed successfully"
}

run_server() {
    echo "Running the server..."
    ./venv/bin/python manage.py runserver 0.0.0.0:8000
    if [ $? -ne 0 ]; then
        echo "Server didn't start"
        exit 1
    fi
}

# Run all tasks
install_python
clone_code
create_virtualenv
install_requirements
run_server

echo "✅ Project ran successfully"
