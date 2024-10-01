#!/bin/bash


install_node_npm() {
  echo "Updating package list..."
  sudo apt update

  echo "Installing prerequisites..."
  sudo apt install -y curl

  echo "Installing Node.js..."
  curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
  sudo apt install -y nodejs

  echo "Node.js and NPM installed successfully!"
  node -v
  npm -v
}


update_nodejs() {
  echo "Updating Node.js to the latest version..."

  sudo npm cache clean -f
  sudo npm install -g n
  sudo n stable

  echo "Node.js has been updated!"
  node -v
}


install_node_npm
update_nodejs
