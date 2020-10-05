#!/bin/bash
# sync everything in the dropbox folder, except the list ive chosen not to, as they are shared folders etc.
BACKUPOUTPUT=/home/jackbinysh/dotfiles/backupconfig/backupoutput
BACKUPERROR=/home/jackbinysh/dotfiles/backupconfig/backuperror

echo "Backup Date: $(date)" >> $BACKUPOUTPUT

# dropbox
DROPBOXDIR="/home/jackbinysh/Dropbox/"
aws s3 sync $DROPBOXDIR s3://jackbinyshbucket/Dropbox/ --exclude "*.dropbox.cache/*"  --exclude "*hydrogel-sim/*" --exclude "*MRC/*" --exclude "*MathematicalArt/*" --exclude "*Papers/*" --exclude "*hopf-bag/*" >> $BACKUPOUTPUT 2>>$BACKUPERROR
