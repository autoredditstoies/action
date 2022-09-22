#!/bin/bash

echo "Running script..."
mkdir temp
cd temp
git clone https://autoredditstoies:${TOKEN}@${REPO} .

chmod +x run.sh
./run.sh

git config --global user.email "a@example.com"
git config --global user.name "autoredditstories"

git add .
git commit -m "Updated by public actions"
git push origin