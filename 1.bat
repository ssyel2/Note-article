@echo off
:: 设置窗口标题
title Sync 'article' to 'Note-article'

:: ==========================================================
:: 1. 用户配置区
:: ==========================================================
:: 设置您的 "原文件夹"
set source_folder="D:\article"

:: 设置您的 "仓库文件夹" (需要被同步的目标文件夹)
set repo_folder="D:\Github\Note-article"


:: ==========================================================
:: 2. 文件同步区
:: ==========================================================
echo.
echo Starting synchronization...
echo    FROM: %source_folder%
echo      TO: %repo_folder%
echo.

:: 使用 Robocopy 进行镜像同步 (/MIR)
:: /XD .git 会排除 .git 文件夹，防止破坏仓库 (非常重要!)
robocopy %source_folder% %repo_folder% /MIR /XD .git

echo.
echo ==========================================================
echo.
echo Synchronization complete!
echo Press any key to exit.
pause >nul