#! /bin/bash
# copy torrent by babaraccas

DEST_DIR_SB="/Volumes/MEGASYNC/btt"
NOW=$(date +%Y-%m-%d\ %H:%M:%S)

cd /Volumes/MEGASYNC/btt
echo "$NOW Torrent-done script ran for post-processing on $TR_TORRENT_NAME" >> torrent-done.log

if [[ "$TR_TORRENT_NAME" == *NHL* ]]
then
echo "$NOW NHL file found - No files copied" >> torrent-done.log
else
echo "$NOW Not an NHL file - Must be a TV show" >> torrent-done.log
cp "$TR_TORRENT_NAME" "$DEST_DIR_SB"
echo "$NOW Copied $TR_TORRENT_NAME to $DEST_DIR_SB" >> torrent-done.log
fi
