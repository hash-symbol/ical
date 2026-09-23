#!/bin/bash

git init
git remote add origin git@github.com-solstice:hash-symbol/ical.git
git config --global user.name "Solstice Cron"
git config --global user.email "cron@yourdomain.com"
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main
