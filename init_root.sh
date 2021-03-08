#!/bin/bash

echo ""
echo "-------------"
echo "Running as:"
whoami

echo ""
echo "##########"
echo "Waiting for internet connectivity (ping 8.8.8.8)"
while ! ping -c 1 -n -w 1 8.8.8.8 &> /dev/null
do
    printf "%c" "."
done
echo "Connection detected."

sleep 5

echo ""
echo "##########"
echo "Updating system"
apt update -y

echo ""
echo "##########"
echo "Installing: git, screen"
apt install git screen -y

sleep 5
