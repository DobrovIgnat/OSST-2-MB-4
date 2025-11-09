@echo off
set /p name="Your GitHub username: "
set /p email="Your GitHub email: "

git config --global user.name "%name%"
git config --global user.email "%email%"

echo Git configured for: %name%
pause