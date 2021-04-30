PS1='% '
export PS1
set -o vi
alias nv="nvim"
alias mk="make"
alias mki="doas make install"
alias mkc="make clean"
alias mkci="doas make clean install"
alias pi="doas pkg_add -Dsnap"
alias pq="pkg_info -Dsnap -Q"
HISTSIZE=2000
HISTFILE=.ksh_history
# man page completion
MAN_CACHE=~/.cache/man
if [ ! -f $MAN_CACHE ]; then
	mkdir -p $(dirname ${MAN_CACHE})
	for i in /usr{,/X11R6,/local}{,/share}/man/{,cat,man}[1-9lnp]{,f,p}
	do
		test -d $i && ls $i
	done | rev | cut -d. -f2- | rev | sort -u > $MAN_CACHE
fi

set -A complete_man -- $(cat $MAN_CACHE)
# OpenBSD rc completion
set -A complete_rcctl_1 -- disable enable get ls order set restart start stop
set -A complete_rcctl_2 -- $(rcctl ls all)
