@echo off
title He Thong Kiem Do Tai Khoan Trung Gian - Streamlit Local
color 0b

echo =======================================================================
echo     HE THONG KIEM DO TAI KHOAN TRUNG GIAN - DIEN LUC VUNG TAU
echo                (GIAO DIEN STREAMLIT KET NOI CLOUD)
echo =======================================================================
echo.
echo [*] Dang kiem tra va cai dat cac thu vien can thiet...
echo.

:: Cai dat cac thu vien thiet yeu bang py hoac python tu requirements.txt
where py >nul 2>nul
if %ERRORLEVEL% equ 0 (
    echo [*] Dang su dung trinh khoi chay py...
    py -m pip install -r requirements.txt
) else (
    echo [*] Dang su dung trinh khoi chay python...
    python -m pip install -r requirements.txt
)

echo.
echo [*] Dang khoi dong Giao dien Streamlit...
echo.

:: Khoi chay Streamlit bang py hoac python
where py >nul 2>nul
if %ERRORLEVEL% equ 0 (
    py -m streamlit run app_streamlit.py
) else (
    python -m streamlit run app_streamlit.py
)

echo.
echo =======================================================================
echo [!] Ung dung da dung lai hoac gap su co khi khoi dong.
echo Vui long kiem tra lai moi truong Python tren may cua ban.
echo =======================================================================
pause
