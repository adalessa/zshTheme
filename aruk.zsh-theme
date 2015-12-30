# vim:ft=zsh ts=2 sw=2 sts=2

# variables for the git and svn functions
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✘%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

SVN_SHOW_BRANCH="true"
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[blue]%}[svn - "
ZSH_THEME_SVN_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"
#end of variables for the functions


## Main prompt
build_prompt() {
#user and machine
    echo -n "%{$fg_bold[green]%}%n%{$fg_bold[red]%} at %{$fg_bold[green]%}%m "
#time
    echo -n "%{$fg[blue]%}%D{[%I:%M:%S]} "
# directory
    echo -n "%{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} "
# svn and git
    echo -n "$(svn_prompt_info)% $(git_prompt_info)%{$fg[blue]%} "
# break line
    echo -n "\n"
# end of promt
    echo -n "->%{$fg_bold[blue]%} %#%{$reset_color%} "
}

PROMPT='$(build_prompt)'
