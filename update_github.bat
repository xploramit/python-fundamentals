@echo off
cd /d C:\Users\amits\python-fundamentals

echo.
echo Checking for changes...
echo.

git add python-fundamentals.ipynb

git diff --cached --quiet
if %errorlevel%==0 (
    echo No new changes found.
    pause
    exit /b
)

git commit -m "Update Python fundamentals notebook"

git pull --rebase origin main

git push origin main

echo.
echo GitHub updated successfully.
echo.

pause