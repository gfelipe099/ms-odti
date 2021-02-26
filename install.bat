@echo off
title Microsoft Office Deployment Tool

rem Script settings

if exist configuration.xml (
    if exist setup.exe (
        if not exist Office/ (
            echo.Downloading Office...
            @powershell .\setup.exe /download configuration.xml
            echo.Office was downloaded successfully!
            pause
        ) else (
            echo.Installing Office...
            @powershell .\setup.exe /configure configuration.xml
            echo.Office was installed successfully!
            pause
        )
    ) else (
        echo.ERROR: setup.exe: No such file or directory
        pause
    )
)
