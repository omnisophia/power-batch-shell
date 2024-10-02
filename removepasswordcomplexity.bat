@echo off
REM Disable password complexity requirements and set password policy

REM Set minimum password length to 0
net accounts /minpwlen:0

REM Set maximum password age to unlimited
net accounts /maxpwage:unlimited

REM Set minimum password age to 0
net accounts /minpwage:0

REM Disable password complexity requirement
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PasswordComplexity" /t REG_DWORD /d 0 /f

REM Set password history to 0 using Local Security Policy
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PasswordHistorySize" /t REG_DWORD /d 0 /f

echo Password policies have been modified.
pause

## needs work, there's a missing variable
