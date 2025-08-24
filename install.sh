git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# 自动建议提示接下来可能要输入的命令
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# 命令语法检测
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
ln -s .zshrc ~/.zshrc


# 备份原有的配置文件
mv $HOME/.config/fastfetch $HOME/.config/fastfetch.bak

# 进入 .config 目录
cd $HOME/.config

# 下载并解压然后删除
wget https://github.com/sqlsec/fastfetch/releases/download/v0.1/fastfetch-for-Linux.zip
unzip fastfetch-for-Linux.zip && rm fastfetch-for-Linux.zip
