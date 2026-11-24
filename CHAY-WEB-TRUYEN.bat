@echo off
chcp 65001 >nul
title MangaVerse VN - Server Kho Truyen Tranh Mo (MangaDex v5 Live)
cd /d "%~dp0"
echo =====================================================================
echo   MANGAVERSE VN - KHO TRUYEN TRANH TIENG VIET MIEN PHI (6,700+ BO)
echo   Dang khoi dong Local API Gateway va Image Proxy tai port 3080...
echo =====================================================================
start "" "http://localhost:3080"
node --use-system-ca server.js
pause
