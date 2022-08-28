给我寄！
For Debian/Ubuntu
apt install curl m4 -y &&curl -Ls "https://git.littleneko.cf/Rottencat/soga-one-key-boot/raw/branch/master/soga-install.sh" > init.sh &&bash init.sh <类型:v2board/sspanel> <对接URL地址，要求/结尾> <对接KEY> <节点id> <节点域名> <CloudFlare 邮箱> <CloudFlare API KEY>
For CentOS/RHEL
yes|yum install curl m4 &&curl -Ls "https://git.littleneko.cf/Rottencat/soga-one-key-boot/raw/branch/master/soga-install.sh" > init.sh &&bash init.sh <类型:v2board/sspanel> <对接URL地址，要求/结尾> <对接KEY> <节点id> <节点域名> <CloudFlare 邮箱> <CloudFlare API KEY>
For Docker Users
docker run --restart=always --name soga -d -v /etc/soga/:/etc/soga/ --network host dnsahvfakcvbpnj/soga:2.0.6 \
--type= <类型:v2board/sspanel> \
--server_type=v2ray \
--api=webapi \
--webapi_url= <对接URL地址，要求/结尾> \
--webapi_mukey=<对接KEY> \
--soga_key=CaonimaSb-Developer-Network \
--node_id=<节点id>

Arm用户以上不适用
