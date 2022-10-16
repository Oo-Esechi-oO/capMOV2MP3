
@echo off
chcp 65001

rem Call a bat file that converts MP4 to MP3.
call subroot_MP4toMP3.bat

rem Call the bat file that separates from the specified start time to the specified end time and outputs to one file.
call subroot_splitMP3.bat

