#!/bin/bash

set -e

[ -z "$(dpkg -s fish)" ] && apt install fish -y

exit 0
