# -*- sh-mode -*-

alias mv='nocorrect mv -f'
alias cp='nocorrect cp -f'
alias rm='nocorrect rm -f'
alias screenu='nocorrect screen -U'

alias mkdir='nocorrect mkdir'
alias man='nocorrect man'

alias find='noglob find'

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lsd='ls -ld *(-/DN)'

alias du='du -h'
alias df='df -h'

alias x='startx'

alias ps='ps -e'

alias cal='cal -m'

alias clr='find . -regex .*~ | xargs rm -f'

alias mkinst='sudo make install'

alias sc='less /usr/X11R6/lib/X11/rgb.txt'

alias srv='sudo service'

alias sjed='sudo jmacs'

alias mnt='sudo mount'
alias mntl='sudo mount -o loop'
alias umnt='sudo umount'

alias irpm='sudo rpm -Uvh'
alias erpm='sudo rpm -ev'

alias cfg='./configure --prefix=/usr --sysconfdir=/etc'
alias xcfg='./configure --prefix=/usr/X11R6 --sysconfdir=/etc/X11'
alias gcfg='./configure --prefix=/usr/GTK --sysconfdir=/etc/GTK --localstatedir=/var/GTK --with-html-dir=/var/doc'

alias u2d='perl -pi -e "s/\\n/\\r\\n/;"'
alias d2u='perl -pi -e "s/\\r\\n/\\n/;"'

alias slog='sudo tail -f /var/log/messages | ccze -A -p syslog'
alias mlog='sudo tail -f /var/log/maillog | ccze -A -p syslog'

alias pst='pstree -G | less'

alias mc='LANG=en_EN.UTF-8 mc'