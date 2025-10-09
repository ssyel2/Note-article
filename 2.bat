@echo off
:: 设置窗口标题
title Quick Push for 'Note-article' Repo

:: ==========================================================
echo.
echo Git Auto Pusher for 'Note-article'
echo.
:: ==========================================================

:: 提示用户输入提交信息
set /p commitMessage="Enter your commit message for this article update: "

:: 检查用户是否输入了信息，如果没有，则使用一个默认值
if "%commitMessage%"=="" (
    set commitMessage="Update article files"
)

echo.
echo ----------------------------------------------------------
echo.

:: 执行 Git 命令
echo [Step 1/3] Running: git add .
git add .

echo.
echo [Step 2/3] Running: git commit -m "%commitMessage%"
git commit -m "%commitMessage%"

echo.
echo [Step 3/3] Running: git push
git push

echo.
echo ----------------------------------------------------------
echo.

:: --- 完成后提示 ---
echo All done! Script has finished.
echo Press any key to exit.
pause >nul