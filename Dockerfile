FROM docker.pkg.github.com/syuneara/gui-vnc/gui:latest
RUN /bin/bash -c 'curl https://raw.githubusercontent.com/syuneara/neara_apps/main/.bashrc -o /root/.bashrc ;\
curl https://raw.githubusercontent.com/syuneara/neara_apps/main/sources.list -o /etc/apt/sources.list ;\
apt update ;\
apt upgrade ;\
apt install -y fonts-takao fonts-noto-color-emoji language-pack-ja language-pack-ja-base ;\
locale-gen ja_JP.UTF-8 ;\
update-locale LANG=ja_JP.UTF8 ;\
cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime'
