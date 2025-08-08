@echo off
setlocal
chcp 65001 >nul
title OlyaUA - setup & start

REM Check Node.js
where node >nul 2>nul
if %errorlevel% neq 0 (
  echo Node.js not found. Please install Node.js LTS from https://nodejs.org/
  pause
  exit /b 1
)

echo Installing dependencies (first run may take a few minutes)...
call npm install
if %errorlevel% neq 0 (
  echo Install failed. Please check your internet connection or Node.js installation.
  pause
  exit /b 1
)

echo Starting the dev server...
call npm start
