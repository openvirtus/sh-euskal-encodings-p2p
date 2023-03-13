@echo off
cd /d %~dp0
set ROOTDIR=%~dp0
set Path=%~dp0\bin;%Path%
set PS1=
set PS2=
IF EXIST %~dp0\bin\terminala-l.sh (
    %~dp0\bin\busybox.exe sh -l -e %~dp0\bin\terminala-l.sh
) ELSE (
    %~dp0\bin\busybox.exe sh -l
)
