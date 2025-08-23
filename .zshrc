# ---------------------------
# Zsh Config with Zinit only
# ---------------------------

# Zinit init
if [[ ! -f ~/.zinit/bin/zinit.zsh ]]; then
    mkdir -p ~/.zinit
    git clone https://github.com/zdharma-continuum/zinit.git ~/.zinit/bin
fi
source ~/.zinit/bin/zinit.zsh

# ---------------------------
# Theme: Powerlevel10k
# ---------------------------
zinit ice depth=1
#zinit light romkatv/powerlevel10k

# Agar hozircha p10k_setup qilmoqchi bo‘lsang:
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---------------------------
# Plugins
# ---------------------------
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions

# ---------------------------
# General Settings
# ---------------------------
autoload -Uz compinit && compinit
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt HIST_SAVE_NO_DUPS

# Prompt optimization
export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000

# Fastfetch banner
#if command -v fastfetch &> /dev/null; then
#  fastfetch
#fi

eval "$(starship init zsh)"

if [[ -z "$FASTFETCH_RAN" ]]; then
  fastfetch
  export FASTFETCH_RAN=1
fi


[[ -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt ]] && \
    cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
