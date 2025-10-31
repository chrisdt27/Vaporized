@echo off
setlocal
title Local Web Server (port 5500)
echo Serving %cd% on http://127.0.0.1:5500
echo Press Ctrl+C in this window to stop the server.
where py >nul 2>&1
if %errorlevel%==0 (
  py -m http.server 5500 --bind 127.0.0.1
) else (
  python -m http.server 5500 --bind 127.0.0.1
)
