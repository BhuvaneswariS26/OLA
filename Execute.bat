REM AUTOMATION TEST PACK 1.8.0

call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat" x86

SET varLocation="%~dp0\Script"

setlocal EnableExtensions DisableDelayedExpansion
set "Directory=%varLocation%\ImplementedDriver\TestResults"

md "%Directory%" 2>nul
if not exist "%Directory%\*" (
    echo Failed to create directory "%Directory%"
    pause
    goto :EOF
)
else
md "%Directory%\CurrentResults" 2>nul

MSTest /testcontainer:%varLocation%\ImplementedDriver\ImplementedDriver\bin\Debug\ImplementedDriver.dll /resultsfile:%varLocation%\ImplementedDriver\TestResults\CurrentResults /test:Driver /testsettings:%varLocation%\ImplementedDriver\SallieMae.testsettings