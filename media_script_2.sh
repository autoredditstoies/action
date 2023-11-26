#!/bin/bash
echo "running script..."
mkdir temp
cd temp

git clone https://autoredditstoies:${TOKEN}@${MEDIA_GENERATOR} .

cd scripts
chmod +x run2.sh
./run2.sh > log2.txt 2>&1 || true  # Continue even if run1.sh fails
cd ..

git config --global user.email ${EMAIL} > temp.txt 2>&1
git config --global user.name "autoredditstories" > temp.txt 2>&1
git add . > temp.txt 2>&1
git commit -m "Done" > temp.txt 2>&1
git push origin main > temp.txt 2>&1
