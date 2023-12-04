#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ "$PATH" == *"$HOME/bin:"* ]] || export PATH="$HOME/bin:$PATH"
! { which werf | grep -qsE "^/home/p4l/.trdl/"; } && [[ -x "$HOME/bin/trdl" ]] && source $("$HOME/bin/trdl" use werf "1.2" "stable")
