apt -y update && apt -y install curl wget git zsh

apt-get install -y curl git zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

sed -i '/^ZSH_THEME=/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions)/" ~/.zshrc

wget https://raw.githubusercontent.com/thankforcat/newlinux/main/.p10k.zsh /$home/.p10k.zsh

source ~/.zshrc