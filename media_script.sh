#!/bin/bash
echo "running script..."
mkdir temp
cd temp

git clone https://autoredditstoies:${TOKEN}@${MEDIA_GENERATOR} .
cd media-generator
chmod +x run.sh
./run.sh > log.txt 2>&1
git add . >>log.txt 2>&1
git commit -m "Done" >>log.txt 2>&1
git push origin main >>log.txt 2>&1
