#!/usr/bin/env bash
# exit on error
set -o errexit

# ১. পাইপ এবং প্যাকেজ ইনস্টল
pip install --upgrade pip
pip install -r requirements.txt

# ২. লিনাক্স Tailwind CLI ডাউনলোড এবং output.css জেনারেট
curl -sLO https://github.com
chmod +x tailwindcss-linux-x64
./tailwindcss-linux-x64 -i ./frontend/static/input.css -o ./frontend/static/output.css --minify

