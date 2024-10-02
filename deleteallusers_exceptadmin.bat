@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Define the base username
SET "baseUser=chu.staff"

REM Loop from 2 to 10
FOR /L %%i IN (2,1,10) DO (
    SET "number=%%i"
    SET "username=!baseUser!!number:~-2!"
    
    REM Attempt to delete the user
    net user "!username!" /delete
    echo Attempted to delete user: "!username!"
)

ENDLOCAL
