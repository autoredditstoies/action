#!/bin/bash

echo "Running script..."
mkdir temp
cd temp
git clone https://autoredditstoies:${TOKEN}@${REPO} && cd "$(basename "$_" .git)"
npm i
npm run start