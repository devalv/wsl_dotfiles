#!/bin/bash

set -e

echo "set python3 as default if not installed"
[ -z "$(dpkg -s python-is-python3)" ] && sudo apt install python-is-python3 -y

echo "installing pyenv additionals"
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev wget curl gcc

echo "removing existing pyenv installation"
rm -rf /home/$USER/.pyenv

echo "installing pyenv"
curl https://pyenv.run | bash

echo "installing python 3.10.2 via pyenv"
/home/$USER/.pyenv/bin/pyenv install 3.10.2 -s

echo "Set Python 3.10.2 as global interpeter"
/home/$USER/.pyenv/bin/pyenv global 3.10.2

exit 0
