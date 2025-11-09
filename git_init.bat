@echo off
set /p folder="Project folder path: "
set /p github_url="GitHub repository URL: "

cd /d "%folder%"

REM Если папка пустая - клонируем репозиторий
dir >nul 2>&1
if errorlevel 1 (
    echo Cloning repository...
    cd ..
    git clone "%github_url%" "%folder%"
    echo Repository cloned successfully!
) else (
    echo Initializing git...
    git init
    git remote add origin "%github_url%"
    git pull origin main --allow-unrelated-histories
    git branch -M main
)

echo Ready to work with GitHub!
pause