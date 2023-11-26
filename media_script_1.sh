#!/bin/bash
echo "running script..."
mkdir temp
cd temp

git clone https://autoredditstoies:${TOKEN}@${MEDIA_GENERATOR} .

cd scripts
chmod +x run1.sh
./run1.sh > log1.txt 2>&1 || run_status=$?  # Continue even if run.sh fails
cd ..

git config --global user.email ${EMAIL} > temp.txt 2>&1
git config --global user.name "autoredditstories" > temp.txt 2>&1
git add . > temp.txt 2>&1
git pull origin main > temp.txt 2>&1
git commit -m "Done" > temp.txt 2>&1
git push origin main > temp.txt 2>&1
echo "logs pushed!!!"

exit $run_status