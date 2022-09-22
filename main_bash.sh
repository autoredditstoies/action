#!/bin/bash

echo "Running script..."
mkdir temp
cd temp
git clone https://autoredditstoies:${TOKEN}@${REPO} .

chmod +x run.sh
./run.sh

git add .
git commit -m "Done"
git push origin