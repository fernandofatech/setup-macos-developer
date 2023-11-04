#!/bin/bash

# macOS development environment setup

echo "Starting setup..."

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
echo "Updating homebrew..."
brew update

# Upgrade any already-installed formulae
echo "Upgrading existing brews..."
brew upgrade

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install applications from apps.txt
echo "Installing applications from apps.txt..."
while IFS= read -r app; do
  brew install --cask "$app"
done < apps.txt

# Install nvm and Node.js
echo "Installing nvm (Node Version Manager)..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Source nvm script directly to use it in the same shell session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install the latest version of Node.js
echo "Installing the latest version of Node.js..."
nvm install node

# Set the default version of Node.js
nvm alias default node

# Cleaning up Homebrew's cache
echo "Cleaning up..."
brew cleanup

echo "Setup complete! Your Mac is now ready for development."

# End of the script
