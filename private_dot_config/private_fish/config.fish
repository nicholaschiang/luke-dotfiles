# Initialize starship
starship init fish | source

# Setup pyenv
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# Aliases
function ea
    vim ~/.config/fish/config.fish
    source ~/.config/fish/config.fish && echo "aliases sourced --ok."
end

function sc-pin
    gpg-connect-agent 'scd checkpin (gpg-connect-agent 'scd serialno' /bye | awk '{print $3}')' /bye
end

alias cat="bat"
alias df="df -h"
alias rg="rg -S -p"
alias ping="prettyping --nolegend"
alias bcp="rsync -avzuhP"
alias lofi="mpv \"https://www.youtube.com/watch?v=5qap5aO4i9A\" --volume=50 --no-video &> /dev/null"
alias cal="ncal -bS"
alias xclip="xclip -selection c"

alias ls="exa"
alias ll="ls -l --group-directories-first"
alias la="ll -a"
alias tree="ls -T"

function pdfembed
    pdftocairo -pdf $argv[1] emb_$argv[1] &&
    echo "Embedded output: emb_$argv[1]"
end
