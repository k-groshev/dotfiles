# Filename: $HOME/.zlogin
# Purpose:  login-file for shell called Zsh
# Author:   Michael Prokop / www.michael-prokop.at
# Latest change: Mon Jul 12 01:25:53 CEST 2004
################################################################################

# not root, not $DISPLAY
if [ "$UID" != 0 ] && [ ! "${DISPLAY}" ]; then
# earlier logins
  if [[ $COLORTERM == "yes" ]]; then
     echo -e "\e[31m\n${USER}'s last:\e[0m\n"
  else
     echo -e "\n${USER}'s last:\n"     
  fi;      

  last ${USER}|head -n 5
# receive messages
  mesg y
# calendar-/todo-stuff
  if [[ -x /usr/bin/pal ]] ; then
    if [[ $COLORTERM == "yes" ]]; then
      echo -e "\e[31m\ncalendar of ${USER}:\e[0m\n"
      pal -d `date +%d`
#      pal -r 15
#-      echo -e "\e[31mtodo-list:\e[32m"
#-      if [[ -f ~/.pal/todo ]]; then cat ~/.pal/todo ; fi
#-      echo -e "\e[0mAnd now kill them all and let us take over the world!"
    else
      echo -e "\ncalendar of ${USER}:\n"
      pal --nocolor -d `date +%d`
#      pal --nocolor -r 15
#-      echo "todo-list:\n"
#-      if [[ -f ~/.pal/todo ]]; then cat ~/.pal/todo ; fi
#-      echo "And now kill them all and let us take over the world!"
    fi # $COLORTERM
  fi # /usr/bin/pal

# run ssh-agent if necessary (check ~/.zsh/func/_call_sshagent)
#  _call_sshagent


fi # not root, not $DISPLAY



