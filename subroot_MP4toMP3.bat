
@echo off

rem Find MP4 files in the directory.
for %%i in (*.mp4) do (
  echo %%i
  
  rem Convert MP4 to MP3
  ffmpeg -i "%%i" out.mp3
  
  rem Only process the first file found.
  goto :END
)

:END


