:: This lets you convert a file to webp by simply dragging the file onto this batch script in File Explorer
:: Lines beginning with "::" are comments
::
:: Note: Requires "cwebp.exe" from Google's libwebp tools, available here: https://developers.google.com/speed/webp/docs/precompiled

@echo off
setlocal

:: Extract the file name without the extension
set "inputFile=%~1"
set "baseFileName=%~n1"

:: Run the conversion - You can customize the command by adding parameters
:: See the possible options here: https://developers.google.com/speed/webp/docs/cwebp
cwebp -q 90 "%inputFile%" -o "%baseFileName%.webp"


echo Conversion completed.

:: If you want the console window to stay open after it finishes, remove the "::" from the beginning of the line below
::pause
