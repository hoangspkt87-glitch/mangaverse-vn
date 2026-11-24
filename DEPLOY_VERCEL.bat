@echo off
chcp 65001 >nul
title MangaVerse VN v5.5 - Deploy Tu Dong Len Vercel (Production)
color 0B

mkdir "d:\AI\.npm-cache" 2>nul
mkdir "d:\AI\.tmp" 2>nul
set npm_config_cache=d:\AI\.npm-cache
set TEMP=d:\AI\.tmp
set TMP=d:\AI\.tmp
set NODE_OPTIONS=--use-system-ca

echo ============================================================================
echo   ▲ MANGAVERSE VN v5.5 - TU DONG DUA WEBSITE LEN VERCEL (397 BO / 98.3K CHAP)
echo ============================================================================
echo.

cd /d "%~dp0"

echo [1/2] Dang kiem tra tai khoan Vercel...
call npx.cmd --yes vercel@41.1.4 whoami >nul 2>nul
if %errorlevel% neq 0 (
    echo [*] Ban chua dang nhap Vercel tren may nay.
    echo [*] Trinh duyet se tu dong mo trang dang nhap Vercel (GitHub / Google / Email).
    echo     Vui long bam "Continue" tren trinh duyet...
    echo.
    call npx.cmd --yes vercel@41.1.4 login
)

echo.
echo [2/2] Dang dong goi va trien khai MangaVerse VN len Vercel Production...
echo.
call npx.cmd --yes vercel@41.1.4 --prod --yes

echo.
echo ============================================================================
echo   🎉 HOAN TAT! Hay mo duong link https://....vercel.app hien o tren!
echo ============================================================================
pause
