export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
#History
setopt histignorealldups sharehistory
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=1000
autoload -U compinit && compinit

#Highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#Sets up zsh shell to use Starship
eval "$(starship init zsh)"

