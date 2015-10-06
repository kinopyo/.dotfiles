# don't know where but `history` is aliased somehow
unalias history
# Ctrl + r to do a interactive history search with percol
# http://blog.zoncoen.net/blog/2014/01/14/percol-autojump-with-zsh/
function exists { which $1 &> /dev/null }

if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(history -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^R' percol_select_history
fi

