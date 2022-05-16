#!/usr/bin/env bash

set -eu
cat <<EOF >>~/.bashrc

if [ -s ~/.bash_env ]; then
    . ~/.bash_env
fi
EOF

cp "$(cd "$(dirname "$0")" && pwd)/.bash_env" ~/
