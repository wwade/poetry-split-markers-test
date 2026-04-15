#!/bin/bash

set -uxeo pipefail

PATH=$PATH:$HOME/.local/bin
export PATH
pip install -U poetry==2.2.1
which poetry
poetry --version
poetry lock
poetry install --all-groups
poetry show -t
poetry run pip list
./run-tests.sh
