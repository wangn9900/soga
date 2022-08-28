#! /bin/bash
echo 'soga破解版对接脚本'
apt install curl wget htop nload -y
bash < <(curl -Ls "https://github.com/wangn9900/soga/edit/main/install.sh")
wget "https://raw.githubusercontent.com/wangn9900/soga/main/soga.conf"
m4 -DTYPE=$1 -DURL=$2 -DKEY=$3 -DNODE=$4 -DHOST=$5 -DCFM=$6 -DCFK=$7 soga.conf |tee soga1.conf
cp soga1.conf /etc/soga/soga.conf
soga restart
sleep 3
/root/.acme.sh/acme.sh --register-account -m c2l@osu.cat
soga restart
rm -rf soga1.conf
