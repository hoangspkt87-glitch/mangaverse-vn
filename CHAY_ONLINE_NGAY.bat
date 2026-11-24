@echo off
chcp 65001 >nul
title MangaVerse VN v5.5 - Phat Website Truc Tiep Ra Internet (Khong can Netlify)
color 0A

mkdir "d:\AI\.npm-cache" 2>nul
mkdir "d:\AI\.tmp" 2>nul
set npm_config_cache=d:\AI\.npm-cache
set TEMP=d:\AI\.tmp
set TMP=d:\AI\.tmp
set NODE_OPTIONS=--use-system-ca

echo ============================================================================
echo   🚀 MANGAVERSE VN v5.5 - PHAT TRUC TIEP RA INTERNET & DIEN THOAI WI-FI
echo   (Chay truc tiep tren IP Viet Nam -> Khong bao gio bi NetTruyen chan!)
echo ============================================================================
echo.

cd /d "%~dp0"

:: Kiem tra server port 3080 da chay chua, neu chua thi khoi dong ngam
netstat -ano | findstr ":3080 " | findstr "LISTENING" >nul
if %errorlevel% neq 0 (
    echo [*] Dang khoi dong may chu MangaVerse VN tai cong 3080...
    start "MangaVerse Server" /min cmd /c "node --use-system-ca server.js"
    timeout /t 2 >nul
) else (
    echo [OK] May chu MangaVerse VN dang chay tai http://localhost:3080
)

echo.
echo [1] LINK DOC TREN MAY TINH:    http://localhost:3080
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do (
    echo [2] LINK DOC TREN DIEN THOAI CUNG WI-FI: http://%%a:3080
)
echo.
echo [*] Dang tao duong ham Internet cong khai (LocalTunnel / Cloudflare)...
echo     Sau khi link https://... hien ra ben duoi, ban co the gui cho bat ky ai!
echo ============================================================================
echo.

where cloudflared >nul 2>nul
if %errorlevel% equ 0 (
    cloudflared tunnel --url http://localhost:3080
) else (
    call npx.cmd --yes localtunnel --port 3080
)

pause
