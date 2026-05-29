@echo off
title He Thong Kiem Do Tai Khoan Trung Gian - Khoi Dong

echo =======================================================================
echo     HE THONG KIEM DO TAI KHOAN TRUNG GIAN - DIEN LUC VUNG TAU
echo =======================================================================
echo.
echo [*] Dang kiem tra va cai dat cac thu vien can thiet...
echo.

:: Cai dat cac thu vien thiet yeu bang py hoac python
where py >nul 2>nul
if %ERRORLEVEL% equ 0 (
    echo [*] Dang su dung trinh khoi chay py...
    py -m pip install flask openpyxl pandas werkzeug
) else (
    echo [*] Dang su dung trinh khoi chay python...
    python -m pip install flask openpyxl pandas werkzeug
)

echo.
echo [*] Dang khoi dong may chu va mo trinh duyet web...
echo.

:: Mo trinh duyet web tro toi localhost cong 5000
start "" "http://127.0.0.1:5000"

:: Khoi chay Flask server bang py hoac python
where py >nul 2>nul
if %ERRORLEVEL% equ 0 (
    py app.py
) else (
    python app.py
)

echo.
echo =======================================================================
echo [!] Ung dung da dung lai hoac gap su co khi khoi dong.
echo Vui long kiem tra lai moi truong Python tren may cua ban.
echo =======================================================================
pause
