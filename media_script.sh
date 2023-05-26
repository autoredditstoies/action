#!/bin/bash
echo "running script..."
mkdir temp
cd temp

git clone https://autoredditstoies:${TOKEN}@${MEDIA_GENERATOR} .
chmod +x run.sh
# ./run.sh > log.txt 2>&1
./run.sh

git config --global user.email ${EMAIL} > temp.txt 2>&1
git config --global user.name "autoredditstories" > temp.txt 2>&1
git add . > temp.txt 2>&1
git commit -m "Done" > temp.txt 2>&1
git push origin main > temp.txt 2>&1
