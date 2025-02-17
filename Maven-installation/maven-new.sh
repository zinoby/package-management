#!/bin/bash
# install Java JDK 1.8+ as a pre-requisit for maven to run.
#Author: Kachy
sudo hostnamectl set-hostname maven
sudo su - ec2-user
cd /opt
sudo yum install wget nano tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
java -version
git --version
#Step1) Download the Maven Software
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.7/binaries/apache-maven-3.8.7-bin.zip
sudo unzip apache-maven-3.8.7-bin.zip
sudo rm -rf apache-maven-3.8.7-bin.zip
sudo mv apache-maven-3.8.7/ maven
#setting Environmental Variables
#vi ~/.bash_profile  # and add the lines below
#export M2_HOME=/opt/maven
#export PATH=$PATH:$M2_HOME/bin
#Refresh and confirn the maven version
source ~/.bash_profile
mvn -version
