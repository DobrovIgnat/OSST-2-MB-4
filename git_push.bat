@echo off
set /p folder="Project folder path: "
set /p message="Commit message: "

cd /d "%folder%"
git add .
git commit -m "%message%"
git push

echo Files uploaded to GitHub!
pause