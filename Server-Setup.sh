#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

read -p "Enter your email for SSH key: " email

echo "Generating SSH key..."
ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/id_ed25519 -N ""

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


echo "Your public key (copy this to GitHub - SSH keys):"
cat ~/.ssh/id_ed25519.pub


read -p "After adding the key to GitHub, press Enter to continue..."

echo "Testing connection to GitHub..."
ssh -T git@github.com

echo "Server Setup Done! — AminToorchi, hope you enjoy this script :))"
