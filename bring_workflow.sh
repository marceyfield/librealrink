#!/usr/bin/env bash
set -e
LIB="lined-rover.a"
TAG="crimson-comet-bright-cedar"
REPO="marceyfield/librealrink"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
