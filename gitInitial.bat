@echo off
git init
if "%1"=="" (set /p remote="Enter Remote URL: ") else (set remote=%1)
set isgit=%remote:~-4%
if "%isgit%" NEQ ".git" (set remote=%remote%.git)
git remote add origin %remote%
git add .
git commit -m "Files Commited"
git push -u origin master