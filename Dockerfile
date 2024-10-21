# 使用最新的Ubuntu AMD64镜像作为基础镜像
FROM arm64v8/ubuntu:24.04
ENV DEBIAN_FRONTEND noninteractive
# COPY sources.list /etc/apt/sources.list
# 安装所需的软件
RUN apt-get update -y && apt-get install -y wget vim locales lsb-release \
# wget https://repo.zabbix.com/zabbix/7.0/ubuntu-arm64/pool/main/z/zabbix-release/zabbix-release_latest+ubuntu24.04_all.deb
# dpkg -i zabbix-release_latest+ubuntu24.04_all.deb
# apt update
# apt install zabbix-agent2 zabbix-agent2-plugin-*
 && wget https://repo.zabbix.com/zabbix/7.0/ubuntu-arm64/pool/main/z/zabbix-release/zabbix-release_latest+ubuntu24.04_all.deb \
 && dpkg -i zabbix-release_latest+ubuntu24.04_all.deb \ 
 && apt-get update -y \
 && apt-get install -y zabbix-sql-scripts 
 
