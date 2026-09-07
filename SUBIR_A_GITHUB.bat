@echo off
setlocal
cd /d "%~dp0"

echo ================================================
echo BMW EDC16 Community Library - primer envio
echo ================================================
echo.

where git >nul 2>nul
if errorlevel 1 (
  echo ERROR: Git no esta instalado o no esta en PATH.
  echo Instala Git for Windows y vuelve a ejecutar este archivo.
  pause
  exit /b 1
)

if not exist .git (
  git init
  git branch -M main
)

git remote get-url origin >nul 2>nul
if errorlevel 1 git remote add origin https://github.com/XThevicente/BMW-EDC16-Community-Library.git

git add .
git commit -m "Initial EDC16 library"

git push -u origin main
if errorlevel 1 (
  echo.
  echo El push no se pudo completar.
  echo GitHub puede pedirte iniciar sesion/autenticacion.
  pause
  exit /b 1
)

echo.
echo Biblioteca subida correctamente a GitHub.
pause
