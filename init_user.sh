#!/bin/bash

whoami

cd ~

git clone https://github.com/Slyke/BashStyle.git
cd BashStyle
bash ./install.sh
cd ..

source ~/.bashrc

declare -a AUTHKEYS=(
  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjQbyl2HbTzMmf6yPWyBp3Qy+ZqI8t1WEcW8YrASI2ajrovGHInRRpf8U7JngmS68sZstDtP0dd+2AOce4VUC6weq309ilV2h2xOn94rPtFGOWA6N3xjydeoeX64n7+tNCVRIOt5TpauspTk8F6rCsD/COjBk0xWZv+w/0U4PltyS7S2oLuxmLv42ZqA1ybrMDBmlIim3nGohF6LlJxuboS8dOwgUyNtslCV/IiTgMommWwG3bIfpnRkc/Z6ANErpQg+5Hy8jIdbeBtd1LDhB8TmJsrnBIVwkKxNSSG+7KPxIMtGp5pXIpxG5K1VXpRHr4LJd7P2RWS8dXMaAGSIHD slyke@DESKTOP-R7BQI7R"
  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6sM5O6pBIIrJYaDgeCYqgCILvzqfaXTqMEWBpeYWUnA1YLDzTCBtZJXV1vj14TYQFrvBymHnydPXBgek5dPWDXyxYXPF6mBVzRVQZQRTadYkmZm4uzJridqLIBrkKHP0Qei0PNqOx0kiH6YZvFluL7CzuODbOmwBVGIdxhj9dALLxxPWz2rbrLjbLj0A6r30reYeYecjVB/h9y7PsEKjccwhTlxlj2dWldQMV5RFsW40czr62xb0QWkmZU5B5tNm6lqF+dg+daGuBLXlRNpmilY8RCnuleR4HRr5Qcqcjzp2dTD3Rzj6WUiMvMdA+Gqi3BV9lhwV77u9O08yRNwA1 slyke@DESKTOP-R7BQI7R"
  # add more here
)

cat /dev/zero | ssh-keygen -q -N ""
touch ~/.ssh/authorized_keys

for i in "${AUTHKEYS[@]}"
do
  echo "$i" >> ~/.ssh/authorized_keys
done

git clone https://github.com/SensorsIot/IOTstack.git

screen -dm bash -c 'sleep 1; exec bash'
