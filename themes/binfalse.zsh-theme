# af-magic.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme
#
# Created on:		June 19, 2012
# Last modified on:	June 20, 2012

GREP_COLOR='1;31'

BLUE="%{${fg[blue]}%}"
RED="%{${fg_bold[red]}%}"
GREEN="%{${fg[green]}%}"
CYAN="%{${fg[cyan]}%}"
MAGENTA="%{${fg[magenta]}%}"
YELLOW="%{${fg[yellow]}%}"
WHITE="%{${fg[white]}%}"
NO_COLOUR="%{${reset_color}%}"


# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'


EXITCODE="%(?..%?%1v )"
JOBS="%(1j.%j .)"

if [ $UID -eq 0 ];
then
	NCOLOR="red";
	PATHCOLOR=$my_orange
else
	NCOLOR="green";
	PATHCOLOR=$BLUE
fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"



# primary prompt
PROMPT='$FG[237]-----------------------    %D{%F %I:%M:%S}    -----------------------%{$reset_color%}
${RED}${EXITCODE}$my_orange$JOBS${PATHCOLOR}%~\
$(svn_prompt_info)\
$(hg_prompt_info)\
$(git_prompt_info) \
$FG[105]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# right prompt
RPROMPT='$my_gray%n@%m %y%{$reset_color%}%'

export WATCHFMT=$'\e[01;36m'" -- %n@%m has %(a.Logged In.Logged out) --"$'\e[00;00m'
export WATCHFMT='%(a. in>.<out) %B%n%b on %B%l%b from %B%M%b at %T %w'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075] "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075]%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX="$FG[075] "
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="$FG[075]%{$reset_color%}"

# hg settings
ZSH_THEME_SVN_PROMPT_PREFIX="$FG[075] "
ZSH_THEME_SVN_PROMPT_CLEAN=""
ZSH_THEME_SVN_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="$FG[075]%{$reset_color%}"
