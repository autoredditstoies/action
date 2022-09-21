#!/bin/bash

echo "Running script..."
mkdir temp
cd temp
git clone https://autoredditstoies:${TOKEN}@${REPO} && cd "$(basename "$_" .git)"
cd $REPO
npm run start > log.txt 2>&1
git add . >>log.txt 2>&1
git commit -m "Update" >>log.txt 2>&1
git push origin >>log.txt 2>&1