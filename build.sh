#!/usr/bin/env bash
# exit on error
set -o errexit

# 1. Install pip packages
pip install --upgrade pip
pip install -r requirements.txt

# 2. Download Tailwind CLI for Linux and generate output.css
curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-linux-x64
chmod +x tailwindcss-linux-x64
./tailwindcss-linux-x64 -i ./frontend/static/input.css -o ./frontend/static/output.css --minify

