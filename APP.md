## yt-dlp 

$ yt-dlp bestvido+bestaudio "https://<link>"

## ffmpeg

To combine the audio and video files in seperate files. 

$ ffmpeg -i video.mp4 -i audio.m4a -c:v copy -c:a aac output.mp4


