@echo off
chcp 65001 >nul
set "KIT=%~dp0kit-para-copiar\.cursor"
set "DEST=%~1"

if "%DEST%"=="" (
  set /p DEST=Caminho completo do repo (ex. c:\_PROJETOS\MeuApp): 
)
if "%DEST%"=="" exit /b 1

if not exist "%DEST%" (
  echo Pasta nao encontrada: %DEST%
  pause
  exit /b 1
)

if not exist "%KIT%" (
  echo Kit nao encontrado: %KIT%
  pause
  exit /b 1
)

xcopy /E /I /Y "%KIT%" "%DEST%\.cursor\"
echo.
echo Rules eco-* instaladas em:
echo   %DEST%\.cursor\rules\
echo.
echo Proximo: abra o repo no Cursor e use D00 do workbench.
pause
