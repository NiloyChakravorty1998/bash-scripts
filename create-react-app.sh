#!/bin/bash
# Check if Node.js and npm are installed
if ! command -v node &>/dev/null || ! command -v npm &>/dev/null; then
  echo "Node.js and npm are required to create a React app. Please install them and try again."
  exit 1
fi

# Check if create-react-app is installed
if ! command -v create-react-app &>/dev/null; then
  echo "Installing create-react-app globally..."
  npm install -g create-react-app
fi

# Prompt for the app name
read -p "Enter the name of your React app: " app_name

# Create the React app
create-react-app $app_name

# Change to the app's directory
cd $app_name

# Start the development server
npm start