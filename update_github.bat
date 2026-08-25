@echo off
cd /d C:\Users\amits\python-fundamentals

git add .

git diff --cached --quiet
if %errorlevel%==0 (
    echo No changes to upload.
    exit /b
)

git commit -m "Auto update notebook"

git pull --rebase origin main

git push origin main

echo.
echo GitHub updated successfully.
pause