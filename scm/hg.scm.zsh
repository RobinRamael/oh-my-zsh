function scm_in_hg_repo () {
    if [[ -d .hg ]]; then
        echo 1
    fi
}

function scm_hg_prompt_info {
    if [[ -f .hg/branch ]]; then
        branch=$(cat .hg/branch)
    else
        branch="default"
    fi

    out="hg$ZSH_THEME_SCM_PROMPT_PREFIX$branch$(parse_hg_dirty)$ZSH_THEME_SCM_PROMPT_SUFFIX"
    echo $out
}


function parse_hg_dirty {
    s=$(hg status 2>/dev/null)
    if [ $s ]; then 
        echo $ZSH_THEME_SCM_PROMPT_DIRTY
    else 
        echo $ZSH_THEME_SCM_PROMPT_CLEAN
    fi
}

ZSH_THEME_SVN_NAME="hg"
