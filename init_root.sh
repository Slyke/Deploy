#!/bin/bash

echo ""
echo "-------------"
echo "Running as:"
whoami

echo ""
echo "##########"
echo "Updating system"
sudo apt-get update -y

echo ""
echo "##########"
echo "Installing: git, screen"
sudo apt-get install git screen -y

sleep 5
