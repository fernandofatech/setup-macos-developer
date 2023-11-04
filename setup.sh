#!/bin/bash

echo "Starting setup..."

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
echo "Updating homebrew..."
brew update

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Read apps list and install
echo "Installing apps from apps.txt..."
xargs brew install < apps.txt

echo "Setup complete!"
