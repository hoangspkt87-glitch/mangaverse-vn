@echo off
chcp 65001 >nul
title Deploy MangaVerse VN 4.0 len Netlify
cd /d "%~dp0"
echo =====================================================================
echo   MANGAVERSE VN 4.0 - DEPLOY LEN NETLIFY
echo =====================================================================
echo   Cach 1 (Nhanh nhat - Keo tha 5 giay):
echo     Trinh duyet se mo trang https://app.netlify.com/drop
echo     Ban chi can keo thu muc "d:\AI\truyen-tranh" hoac file
echo     "d:\AI\truyen-tranh-netlify.zip" tha vao khung Netlify Drop!
echo.
echo   Cach 2 (Full Serverless Functions qua Netlify CLI):
echo     Dang nhap tai khoan Netlify tren cua so trinh duyet...
echo =====================================================================
start "" "https://app.netlify.com/drop"
npx netlify-cli deploy --prod --dir=. --functions=netlify/functions
pause
