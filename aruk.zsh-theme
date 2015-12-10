# vim:ft=zsh ts=2 sw=2 sts=2

PROMPT=$'%{$fg_bold[green]%}%n%{$fg_bold[red]%} at %{$fg_bold[green]%}%m %{$fg[blue]%}%D{[%I:%M:%S]} %{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} $(svn_prompt_info)% $(git_prompt_info)\
%{$fg[blue]%}->%{$fg_bold[blue]%} %#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✘%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

SVN_SHOW_BRANCH="true"
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[blue]%}[svn - "
ZSH_THEME_SVN_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"
