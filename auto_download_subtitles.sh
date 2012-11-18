#!/bin/bash
VERSION="0.1"
function show_help_txt {
  echo " $0 v$VERSION (license GPLv3)"
  echo " DESCRIPTION:"
  echo "    Automatically download spanish subtitles to all videos of directory <MOVIES_DIR>"
  echo "    If <MOVIES_DIR> is not given, but the Trnamission environment variables $TR_TORRENT_DIR, $TR_TORRENT_NAME are"
  echo "    defined, then it will consider MOVIES_DIR=$TR_TORRENT_DIR/$TR_TORRENT_NAME"
  echo " USAGE:"
  echo "    $0 <MOVIES_DIR>"
  echo "    $0   (with environment variables $TR_TORRENT_DIR, $TR_TORRENT_NAME)"
  echo " EXAMPLE:"
  echo "    $0 /datas/movies/ink"
}

env > /tmp/env.tmp

#Args check
if [ "$1" ]; then
  # Argument given: <MOVIES_DIR>
  MOVIES_DIR="$1"
  [ -d "$MOVIES_DIR" ] || { echo "Error: '$MOVIES_DIR' not a directory?!?"; exit 1; }
elif [ -n "$TR_TORRENT_DIR" -a -n "$TR_TORRENT_NAME" ]; then
  # No argument given, but we have found Transmission environment variables
  MOVIES_DIR="$TR_TORRENT_DIR/$TR_TORRENT_NAME"
else
  # Neither argument, nor environment variables
  show_help_txt; exit 1
fi

# Download subtitles
filebot -r --output srt --lang es -get-subtitles "$MOVIES_DIR"
exit $?
