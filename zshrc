# where my zsh dir is
ZSH=$HOME/dotfiles_reloaded/oh-my-zsh

source $HOME/dotfiles_reloaded/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# plugins
plugins=(git osx brew zsh-syntax-highlighting)

# fix vi backspace
if (($+terminfo[kbs])); then
  bindkey -M viins $terminfo[kbs] backward-delete-char
else
  bindkey -M viins '^?' backward-delete-char
  bindkey -M viins '^H' backward-delete-char
fi

# highlighting settings
#ZSH_HIGHLIGHT_STYLES[path]='bold'

# zsh themes
source $ZSH/oh-my-zsh.sh

# ZSH_THEME=agnoster

# my term path
export PATH=/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin
NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'

# Change the Prompt
function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}


PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} @ %{$fg[yellow]%}%m%{$reset_color%} : %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# aliases to make stuff faster
alias lss="ls -lAF"
alias gits="git status"
alias gitc="git commit -a"
alias gitp="git push origin"
alias gitd="git diff"
alias gitpu="git smart-pull"

# vim man
# export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
#     vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
#         -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
#             -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
