@echo off
set /p folder="Project folder path: "
set /p message="Commit message: "

cd /d "%folder%"

echo Pulling latest changes...
git pull origin main --no-edit

echo Adding files...
git add .

echo Committing...
git commit -m "%message%"

echo Pushing to GitHub...
git push origin main

echo Files uploaded to GitHub!
pause