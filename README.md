# Description
Purpose: when *Transmission* finishes downloading a torrent, auto-execute *"auto_download_subtitles.sh"*, which in turn will scan the torrent directory for any video files present, and download subtitles for each video file. 
By default the subtitles are in spanish, but its possible to change them (edit `auto_download_subtitles.sh`)  

Install this script, configure Transmission, and all your finished torrents will automatically have subtitles for the videos (using [Filebot](http://filebot.sourceforge.net/))  

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
wget https://github.com/zipizap/Transmission-torrent-subtitles/raw/master/auto_download_subtitles.sh 
chmod 777 auto_download_subtitles.sh
```

# 2. Configure Transmission
   - Open Transmission 
   - Edit / Preferences
   - Tab Torrents:
    + check: "Call script when torrent is completed" and point to => "auto_download_subtitles.sh"


# 3. All done - enjoy
  Download some torrent movie or serie and check if the subtitles are automatically added :)

# Final notes
  + the downloading of subtitles is handled by [Filebot](http://filebot.sourceforge.net/), which fetches them from OpenSubtitles, Subscene and Sublight - these are community-made subtitles, and so may not exist for all movies/series. The more famous the movie, the more seeds/leechers the torrent will have, and therefore the more likely subtitles will exist.
  + if the subtitles downloaded automatically are not good, you can try to download other version of the subtitles (if available) manually, by opening yourself the `filebot` program, which is very easy to use
  + I hope Nacho will now be tempted to try out Ubuntu, and discover technological freedom all-beyond windows :)

# Infos:
  - see https://trac.transmissionbt.com/wiki/Scripts


