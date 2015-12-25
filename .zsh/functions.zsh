 # -*- shell-mode -*-

setenv () { typeset -x "${1}${1:+=}${(@)argv[2,$#]}" }

lib () { ldd `which $1` }

shot () {
    [ -d ~/sshots ] || mkdir -p ~/sshots
    sf=`mktemp -p ~/sshots/desktop-XXXXXX.xwd`
    echo "Screenshot file - $sf"
    [ "$1" ] && sleep $1
    xwd -root > $sf 
}

src () {
    autoload -U zrecompile
    [ -f ~/.zshrc ] && zrecompile -p ~/.zshrc ~/.zsh/*.zsh
    [ -f ~/.zsh/compdump ] && zrecompile -p ~/.zsh/compdump
    [ -f ~/.zshrc.zwc.old ] && rm -f ~/.zshrc.zwc.old
    [ -f ~/.zcompdump.zwc.old ] && rm -f ~/.zcompdump.zwc.old
    source ~/.zshrc
}

pdiff () { 
    [ -n "$2" ] && suff="$2" || suff="generic"
    diff -urN $1-orig $1 > $1-$suff.patch 
}

mc () {
    MC_USER=`id | sed 's/[^(]*(//;s/).*//'`
    MC_PWD_FILE="${TMPDIR-/tmp}/mc$$-$RANDOM"
    export RUN_MC=1
#    LC_MESSAGES=C /usr/bin/mc -P "$MC_PWD_FILE" "$@"      
    /usr/bin/mc -P "$MC_PWD_FILE" "$@"      
    if test -r "$MC_PWD_FILE"; then
	MC_PWD="`cat $MC_PWD_FILE`"
	if test -n "$MC_PWD" && test -d "$MC_PWD"; then
		cd "$MC_PWD"
	fi
	unset MC_PWD
    fi    
    rm -f "$MC_PWD_FILE"
    unset MC_PWD_FILE RUN_MC
}
