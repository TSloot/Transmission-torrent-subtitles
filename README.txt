# 1. Install dependencies: 
## Filebot
wget http://downloads.sourceforge.net/project/filebot/filebot/FileBot_3.0/filebot_3.0_i386.deb?r=http%3A%2F%2Ffilebot.sourceforge.net%2F&ts=1350517843&use_mirror=ignum
sudo dpkg -i filebot_.*_i386.deb
sudo apt-get -y -f install 
sudo dpkg -i filebot_.*_i386.deb
  # If you want to manually try filebot, do:
  #   MOVIES_DIR="/home/paulo/Datas/pelis/series"
  #   filebot -r --output srt --lang es -get-subtitles $MOVIES_DIR

# 2. Configure transmission
#   - Edit / Preferences
#   - Torrents / Call script when torrent is completed => point to "auto_download_subtitles.sh"

# 3. All done 
#   Now when Transmission finishes downloading a torrent, it will automatically execute "auto_download_subtitles.sh", which in turn will scan the torrent directory
#   for any video files present, and download subtitles for each video file. By default the subtitles will be in spanish, but its possible to change them (edit auto_download_subtitles.sh)

# Infos:
#  - see https://trac.transmissionbt.com/wiki/Scripts


