
@echo off

md rst

rem Reads the contents of list.txt line by line, extracts from the specified start time to the specified end time, and outputs it to the specified file name.
for /f "tokens=1-3" %%i in (list.txt) do (
  echo %%~i, %%~j, %%~k
  
  rem Cut out at specified time.
  ffmpeg -i out.mp3 -ss "%%~i" -to "%%~j" rst/"%%~k"
)

del out.mp3

