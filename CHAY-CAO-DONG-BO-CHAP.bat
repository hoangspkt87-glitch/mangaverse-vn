@echo off
chcp 65001 >nul
title MangaVerse VN 5.0 - Cong Cu Cao Va Dong Bo Toan Bo Chuong Manga
cd /d "%~dp0"
echo =====================================================================
echo   MANGAVERSE VN 5.0 - CAO VA DONG BO TOAN BO CHUONG TRUYEN ĐA NGUON
echo   Nguon quet: NetTruyen + CuuTruyen + TruyenQQ/OTruyen + MangaDex VN
echo =====================================================================
node --use-system-ca crawler-sync.js 3
pause
