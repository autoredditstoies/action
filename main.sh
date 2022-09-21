#!/bin/bash

echo "Running script..."
mkdir temp
cd temp
git clone https://autoredditstoies:${TOKEN}@${REPO} .
cd ${REPO}
chmod +x run.sh
./run.sh > log.txt 2>&1
git add . >>log.txt 2>&1
git commit -m "Update" >>log.txt 2>&1
git push origin >>log.txt 2>&1