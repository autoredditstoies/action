#!/bin/bash
echo "running script..."
mkdir temp
cd temp

git clone https://autoredditstoies:${TOKEN}@${MEDIA_GENERATOR} .
chmod +x run.sh
./run.sh

git config --global user.email ${EMAIL}
git config --global user.name "autoredditstories"
git add .
git commit -m "Done"
git push origin main
