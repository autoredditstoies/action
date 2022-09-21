#!/bin/bash
echo "running script..."
mkdir temp
cd temp

git clone https://autoredditstoies:${TOKEN}@${MEDIA_GENERATOR} .
cd media-generator
chmod +x run.sh
./run.sh > temp.txt
git add . > temp.txt
git commit -m "Done" > temp.txt
git push origin main > temp.txt
