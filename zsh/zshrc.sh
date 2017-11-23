R="\033[31;159m"

figlet -t -f slant '*' Privyet blyat! '*'

echo $R"You're off to break some more shit I assume, m'lord..? \n \nYes, yes you are... Whelp, carry on then!" | cowthink -f tux

# Vars
        HISTFILE=~/.zsh_history
        SAVEHIST=1000 
        setopt inc_append_history # To save every command before it is executed 
        setopt share_history # setopt inc_append_history

# Aliases

alias clock="watch -n1 'date '+%D%n%T'|figlet -k'"
alias ttfb='curl -o /dev/null -w "Connect: %{time_connect} TTFB: %{time_starttransfer} Total time: %{time_total} \n"'

alias nsts="echo ns1.tsohost.co.uk
             echo ns2.tsohost.co.uk
             echo ns3.tsohost.co.uk"

alias nsvi="echo Cloud:
              echo ns1.vidacloud.co.uk
              echo ns2.vidacloud.co.uk
              echo ns3.vidacloud.co.uk
              echo
              echo cPanel:
              echo ns1.vidahost.com
              echo ns2.vidahost.com"

alias nsda="echo ns1.daily.co.uk
            echo ns2.daily.co.uk"

alias ц=c
alias q=exit
alias gbp="echo £ £ £ £ £ £ £ £ £ £ £ £ £ £"
alias stego="fortune | cowsay -f stegosaurus"
alias lol="exec 1> >(lolcat);"
alias cri="exec &>/dev/tty && clear"
alias tso="dig any @ns1.tsohost.co.uk"
alias tso2="dig any @ns2.tsohost.co.uk"
alias vida="dig any @ns1.vidahost.com"
alias vida2="dig any @ns2.vidahost.com"
alias cyka=sudo
alias p="ping"
alias kto="dig any"
alias mx="dig mx"
alias spf="dig txt"
alias c=cri
alias h="host"
alias wh="whois"
alias hostf="sudo nano /etc/hosts"
alias editor="sudo nano ~/.zshrc"
alias w="/home/sasha/bin/w"

#Functions
        stty -ixon

source ~/dotfiles-final/zsh/plugins/oh-my-zsh/lib/history.zsh
source ~/dotfiles-final/zsh/plugins/oh-my-zsh/lib/key-bindings.zsh
source ~/dotfiles-final/zsh/plugins/oh-my-zsh/lib/completion.zsh
source ~/dotfiles-final/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles-final/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles-final/zsh/keybindings.sh
source ~/dotfiles-final/zsh/plugins/oh-my-zsh/plugins/encode64/encode64.plugin.zsh
source ~/dotfiles-final/zsh/plugins/oh-my-zsh/plugins/nyan/nyan.plugin.zsh
# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
        autoload -U up-line-or-beginning-search
        zle -N up-line-or-beginning-search
        bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
        autoload -U down-line-or-beginning-search
        zle -N down-line-or-beginning-search
        bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

source ~/dotfiles-final/zsh/prompt.sh
