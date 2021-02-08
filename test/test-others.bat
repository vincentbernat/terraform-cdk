@echo off
setlocal EnableExtensions
setlocal EnableDelayedExpansion

cd /D %~dp0

for /d %%d in ("test-csharp*") do (
    if exist "%%d\" (
        if exist "%%d\test.js" (
            echo --------------------------------------------------------------------
            echo %%d
            echo --------------------------------------------------------------------
            set startTime=%time%
            call node "%%d\test.js"
            echo Start Time: %startTime%
            echo Finish Time: %time%
            IF !ERRORLEVEL! NEQ 0 exit /B 1
        )
    )
)

for /d %%d in ("test-java*") do (
    if exist "%%d\" (
        if exist "%%d\test.js" (
            echo --------------------------------------------------------------------
            echo %%d
            echo --------------------------------------------------------------------
            set startTime=%time%
            call node "%%d\test.js"
            echo Start Time: %startTime%
            echo Finish Time: %time%
            IF !ERRORLEVEL! NEQ 0 exit /B 1
        )
    )
)

for /d %%d in ("test-python*") do (
    if exist "%%d\" (
        if exist "%%d\test.js" (
            echo --------------------------------------------------------------------
            echo %%d
            echo --------------------------------------------------------------------
            set startTime=%time%
            call node "%%d\test.js"
            echo Start Time: %startTime%
            echo Finish Time: %time%
            IF !ERRORLEVEL! NEQ 0 exit /B 1
        )
    )
)