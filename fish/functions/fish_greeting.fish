function fish_greeting
  set RED '\033[0;31m'

  set BACKUPOUTPUTPATH /home/jackbinysh/dotfiles/backupconfig
  set LB (rg --no-filename 'Backup Date' $BACKUPOUTPUTPATH | tail -1)
  echo -e $RED$LB 
end
