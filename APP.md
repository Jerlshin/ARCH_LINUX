## yt-dlp 

$ yt-dlp bestvido+bestaudio "https://<link>"

## ffmpeg

To combine the audio and video files in seperate files. 

$ ffmpeg -i video.mp4 -i audio.m4a -c:v copy -c:a aac output.mp4

## Ranger

To set the sort order 
$ set sort=mtime
$ set sort_reverse=False 

## xrandr 

$ xrandr --output eDP-1 --brightness 0.5 

## convert file 
$ pdf2odt --pdf "file.pdf" "file.odt"
$ libreoffice --headless --convert-to pdf file.odt 

# Convert ipynb to pdf 

$ jupyter nbconvert --to pdf file.ipynb

# To combine pdfs

$ pdftk file1.pdf file2.pdf cat output combined.pdf

# Pymodoro

$ pymodoro -w 30 -b 10              # 30 mins work, 10 mins rest
$ pymodoro -l 4                     # 4 loop cycles 

