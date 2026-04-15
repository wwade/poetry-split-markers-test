#!/bin/bash
set -uxeo pipefail
poetry install --no-interaction --all-groups
poetry run python -m unittest discover -s tests -p 'test*.py'
