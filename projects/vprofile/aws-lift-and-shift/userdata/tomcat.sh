#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt update
sudo apt install pipx
sudo pipx install awscli
sudo pipx ensurepath
sudo apt install openjdk-11-jdk -y
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
cd /tmp
curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.90/bin/apache-tomcat-9.0.90.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-9.0.90.tar.gz -C /opt/tomcat
sudo chown -RH tomcat: /opt/tomcat
sudo chmod +x /opt/tomcat/bin/*.sh
sudo update-java-alternatives -l
rm -rf /etc/systemd/system/tomcat.service

cat <<EOT >> /etc/systemd/system/tomcat.service
[Unit]

Description=Apache Tomcat Web Application Container

After=network.target

[Service]

Type=forking

User=tomcat

Group=tomcat

Environment="JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64"

Environment="CATALINA_HOME=/opt/tomcat"

Environment="CATALINA_PID=/opt/tomcat/temp/tomcat.pid"

Environment="CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC"

ExecStart=/opt/tomcat/bin/startup.sh

ExecStop=/opt/tomcat/bin/shutdown.sh

[Install]

WantedBy=multi-user.target
EOT

sudo daemon-reload
sudo systemctl start tomcat
