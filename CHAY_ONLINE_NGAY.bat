@echo off
chcp 65001 >nul
title MangaVerse VN v5.5 - Phat Website Truc Tiep Ra Internet (100%% NetTruyen Live)
color 0A

echo ============================================================================
echo   🚀 MANGAVERSE VN v5.5 - PHAT TRUC TIEP RA INTERNET & DIEN THOAI WI-FI
echo   (Chay truc tiep tren IP Viet Nam -> 100%% NetTruyen + 98,344 Chuong!)
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
echo [*] Dang mo duong ham Internet HTTPS cong khai (localhost.run)...
echo     Copy duong link https://....app.lhr.life ben duoi de mo tren moi thiet bi!
echo ============================================================================
echo.

ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=30 -R 80:localhost:3080 nokey@localhost.run

pause
