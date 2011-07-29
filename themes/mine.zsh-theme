function prompt_pwd() { 
    the_path=$(echo $PWD | sed "s/\/Users\/robin/~/")
    if [ ${#the_path} -gt 30 ]; then 
	echo "..."${the_path[-30, -1]}
    else
	echo $the_path
    fi
}

PROMPT='%{$fg_bold[green]%}λ%{$reset_color%} \
%{$fg_bold[red]%} $(prompt_pwd)%{$reset_color%} '
RPROMPT='   %{$fg_bold[blue]%}%p $(get_scm_prompt)%{$reset_color%}'

ZSH_THEME_SCM_PROMPT_PREFIX=": "
ZSH_THEME_SCM_PROMPT_SUFFIX=""
ZSH_THEME_SCM_PROMPT_DIRTY="%{$fg_bold[red]%} *%{$reset_color%}"
ZSH_THEME_SCM_PROMPT_CLEAN=""