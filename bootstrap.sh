# basic dependencies
sudo apt-get install vim git curl \
	wget tree terminator guake \
	autojump python2 python3 \
    docker zim xclip xsel \
    gparted maven s3cmd tree cssh ant \
    gawk silversearcher-ag xmlstarlet jq \
    python-dev python3-dev redis 

#

# setup autojump
sudo chmod a+x /usr/share/autojump/autojump.bash
echo "source /usr/share/autojump/autojump.bash" >> ~/.bashrc

# setup spf13 vim
sh <(curl https://j.mp/spf13-vim3 -L)

# install brave browser
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


# install spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client


# setup fabric completion
wget https://raw.githubusercontent.com/kbakulin/fabric-completion/master/fabric-completion.bash
mv fabric-completion.bash .fabric-completion.bash
echo "source .fabric-completion.bash" >> mybashrc
