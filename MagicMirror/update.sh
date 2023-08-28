#!/bin/bash

sudo apt update
sudo apt upgrade

# Store the current directory
current_dir=$(pwd)

# Navigate to the MagicMirror folder and backup the config.js file and modules folder
cd MagicMirror
cp config/config.js "$current_dir"/backup/
cp -r modules "$current_dir"/backup/

# Run git pull and npm install in the MagicMirror folder
git add .
git stash
git pull
npm run install-mm

# Copy the backed up config.js file and modules folder back to their original positions
cp "$current_dir"/backup/config.js config/
cp -r "$current_dir"/backup/modules .

# Return to the original directory
cd "$current_dir"

echo "Backup and update completed successfully!"