# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
set_proxy(){
    export http_proxy='http://127.0.0.1:7890'
    export https_proxy='http://127.0.0.1:7890' 
}

unset_proxy(){
    unset http_proxy
    unset http_proxy
}
if [ 'tty | grep tty' ]; then
    export LANG="en_US.UTF-8"
else
    export LANG="zh_CN.UTF-8"
fi
alias vi='vim'
alias  uzip='unzip -O GBK '
alias ll='ls -al'
#alias tr='tar -xvf '
alias clr='clear'
alias get_idf='. /home/Dregen_Yor/esp/v5.3.2/esp-idf/export.sh'

export LANG=en_US.UTF-8
export LC_ALL="en_US.UTF-8"
export XMODIFIERS="@im=fcitx5"
export QT_IM_MODULE="fcitx5"
export GTK_IM_MODULE=fcitx5
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export TEXMFDIST=/usr/share/texmf-dist

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/extras/CUPTI/lib64

# Add TeX Live to the PATH, MANPATH, INFOPATH
export PATH=/usr/local/texlive/2024/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH

# Created by `pipx` on 2024-03-22 10:39:42
export PATH="$PATH:/usr/local/texlive/2024"
export PATH="$PATH:/home/Dregen_Yor/node_modules/lib/node_modules"
export UV_DEFAULT_INDEX="https://pypi.tuna.tsinghua.edu.cn/simple"
PATH=~/.console-ninja/.bin:$PATH


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
set_proxy


[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
