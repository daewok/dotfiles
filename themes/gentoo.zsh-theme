function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%d) $(git_prompt_info)$(svn_dirty)%_$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "

ZSH_THEME_SVN_PROMPT_DIRTY="(%{$fg_bold[red]%}DIRTY%{$fg_bold[blue]%}) "
ZSH_THEME_SVN_PROMPT_CLEAN="(%{$fg[green]%}CLEAN%{$fg_bold[blue]%}) "