# Enable plugins.
plugins=(aws python git git-extras brew history kubectl history-substring-search osx)

source $ZSH/oh-my-zsh.sh

for function in ~/.zsh/functions/*; do
  source $function
done

ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# k8s
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
