#!/usr/bin/env bash
# exit on error
set -o errexit

# ১. পাইথন প্যাকেজ ইনস্টল
pip install -r requirements.txt

# ২. লিনাক্স Tailwind CLI ডাউনলোড এবং output.css জেনারেট (v4.3.3)
curl -sLO https://github.com
chmod +x tailwindcss-linux-x64
./tailwindcss-linux-x64 -i ./frontend/static/input.css -o ./frontend/static/output.css --minify
