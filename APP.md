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

## PostgreSQL

Initialize the database cluster

$ sudo -iu postgres initdb -D /var/lib/postgres/data

Switch to the postgres user

$ sudo -iu postgres

Open the PostgreSQL interactive terminal

$ psql 

$ CREATE DATABASE UserMonitor;  -- Create a new database named 'UserMonitor'
$ CREATE USER jerlshin WITH PASSWORD 'imfreaked@008';  -- Create a new user 'jerlshin' with the password 'imfreaked@008'
$ ALTER ROLE jerlshin SET client_encoding TO 'utf8';  -- Set UTF-8 encoding for the user to support all characters
$ ALTER ROLE jerlshin SET default_transaction_isolation TO 'read committed';  -- Set transaction isolation level to 'read committed'
$ ALTER ROLE jerlshin SET timezone TO 'UTC';  -- Set the timezone for the user to UTC for consistent time handling
$ GRANT ALL PRIVILEGES ON DATABASE UserMonitor TO jerlshin;  -- Grant all privileges on 'UserMonitor' to 'jerlshin'


Exit and return to your regular user 
$ \q 
$ exit 


