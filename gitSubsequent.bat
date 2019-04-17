@echo off
if not exist .git\ (git init)
if "%1"=="" (if exist .git/config (for /F "tokens=3 delims= " %%A in ('find "url" .git/config') do (if %%A NEQ "" (set remote=%%A) else (set /p remote="Enter Remote URL: "))) else (set /p remote="Enter Remote URL: ")) else (set remote=%1)
set isgit=%remote:~-4%
if "%isgit%" NEQ ".git" (set remote=%remote%.git && set url=%remote%) else (set url=%remote:.git=%)
git remote set-url origin %remote%
git add .
if "%2"=="" (set msg="Files Committed") else (set msg=%2)
git commit -m %msg%
git pull origin master
git push -u origin master
start %url%