@echo off

for /f "delims=" %%d in ('dir /b /a-d') do (
	echo file '%%d' >> files.txt
)

mkdir output

ffmpeg -f concat -safe 0 -i files.txt -c copy output/%1