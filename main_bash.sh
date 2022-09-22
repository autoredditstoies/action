#!/bin/bash

echo "Running script..."
mkdir temp
cd temp
git clone https://autoredditstoies:${TOKEN}@${REPO} .

chmod +x run.sh
./run.sh

git config --global user.email ${EMAIL} > temp.txt 2>&1
git config --global user.name "autoredditstories" > temp.txt 2>&1

git add .
git commit -m "Done"
git push origin