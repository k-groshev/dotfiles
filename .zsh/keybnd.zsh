# -*- sh-mode -*-

case $TERM in 
    linux)
	bindkey "^[[2~" yank
	bindkey "^[[3~" delete-char
	bindkey "^[[5~" up-line-or-history
	bindkey "^[[6~" down-line-or-history
	bindkey "^[[1~" beginning-of-line    ## Home
	bindkey "^[[4~" end-of-line          ## End
	bindkey "^[e" expand-cmd-path
	bindkey "^[[A" up-line-or-search 
	bindkey "^[[B" down-line-or-search
	bindkey " " magic-space
	;;
    screen)
	bindkey "^[[2~" overwrite-mode        ## ins
	bindkey "^[[3~" delete-char           ## Del
	bindkey "^[[5~" history-beginning-search-backward-end
	bindkey "^[[6~" history-beginning-search-forward-end 
	bindkey "^[[7~" beginning-of-line     ## Home
	bindkey "^[[8~" end-of-line           ## End
	bindkey "^[e" expand-cmd-path         ## C-e for expanding path of typed command
	bindkey "^[[A" up-line-or-search      ## up arrow for back-history-search
	bindkey "^[[B" down-line-or-search    ## down arrow for fwd-history-search
	bindkey " " magic-space               ## do history expansion on space	
	;;		
    xterm*|rxvt)
	bindkey "^[[2~" yank                 ## BackSpace
	bindkey "^[[3~" delete-char          ## Del
#	bindkey "^[[5~" up-line-or-history
#	bindkey "^[[6~" down-line-or-history 
	bindkey "^[[5~" history-beginning-search-backward-end
	bindkey "^[[6~" history-beginning-search-forward-end 
	bindkey "^[[7~" beginning-of-line     ## Home
	bindkey "^[[8~" end-of-line           ## End
	bindkey "^[e" expand-cmd-path         ## C-e for expanding path of typed command
	bindkey "^[[A" up-line-or-search      ## up arrow for back-history-search
	bindkey "^[[B" down-line-or-search    ## down arrow for fwd-history-search
	bindkey " " magic-space               ## do history expansion on space	
	;;	
esac

bindkey -s "^e" 'eject\n'
bindkey -s "^f" 'mc\n'
###############################################################################################
# this one is very nice:
# cursor up/down look for a command that started like the one starting on the command line
function history-search-end {
    integer ocursor=$CURSOR

    if [[ $LASTWIDGET = history-beginning-search-*-end ]]; then
      # Last widget called set $hbs_pos.
      CURSOR=$hbs_pos
    else
      hbs_pos=$CURSOR
    fi

    if zle .${WIDGET%-end}; then
      # success, go to end of line
      zle .end-of-line
    else
      # failure, restore position
      CURSOR=$ocursor
      return 1
    fi
}
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
###############################################################################################