# Description
Install this script, configure Transmission and all your finished torrents will automatically have subtitles for the videos in spanish   

This is just a simple bash script, which will scan-and-download subtitles of all the videos inside a directory (using [Filebot](http://filebot.sourceforge.net/))  

Its purpose it that when Transmission finishes downloading a torrent, it will automatically execute "auto_download_subtitles.sh", which in turn will scan the torrent directory  
for any video files present, and download subtitles for each video file. By default the subtitles will be in spanish, but its possible to change them (edit auto_download_subtitles.sh)  

NOTE: this script is made for Debian, Ubuntu. It will not work with Windows

# 1. Install 
```
## Dependencies: `Filebot`
cd /tmp && wget "http://filebot.sourceforge.net/download.php?type=deb&arch=i386" -O  filebot_latest_i386.deb
sudo dpkg -i filebot_latest_i386.deb
sudo apt-get -y -f install 
sudo dpkg -i filebot_latest_i386.deb
  # If you want to manually try filebot, do:
  #   MOVIES_DIR="/home/paulo/Datas/pelis/series"
  #   filebot -r --output srt --lang es -get-subtitles $MOVIES_DIR

## Download the script `auto_download_subtitles.sh` 
cd $HOME
wget 
chmod 777 auto_download_subtitles.sh
```

# 2. Configure Transmission
   - Open Transmission 
   - Edit / Preferences
   - Torrents 
    + check: "Call script when torrent is completed" and point to => "auto_download_subtitles.sh"


# 3. All done 
   Now when Transmission finishes downloading a torrent, it will automatically execute "auto_download_subtitles.sh", which in turn will scan the torrent directory  
   for any video files present, and download subtitles for each video file. By default the subtitles will be in spanish, but its possible to change them (edit auto_download_subtitles.sh)  

# Infos:
  - see https://trac.transmissionbt.com/wiki/Scripts


