# Data2bot Task
This task will provision a RedHat 8 instance using Terraform as Iac and Jenkins tool for our CI-CD pipeline.

# Prerequisite:

AWS Web Console

Create Ubuntu 18.04 ec2 Instance

t2. medium

# To Start.....

Install Jenkins on your linux server (Ubuntu 18.04 Distribution)

cd /opt

#copy the below and run as script

#!/bin/bash

sudo hostname docker

sudo apt update -y

#Install java as jenkins dependency

sudo apt install openjdk-11-jdk -y

#install jenkins in ubuntu:

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
    
sudo apt-get update

sudo apt-get install jenkins -y

sudo systemctl start jenkins

sudo usermod -aG docker jenkins

echo "jenkins  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/jenkins 

docker --version

sudo su - jenkins

sudo systemctl start jenkins


# To install Terraform on your now running jenkins server (Ubuntu 18.04 Distribution)

as jenkins user

cd /opt

$ sudo apt install wget unzip -y

$ wget https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_linux_amd64.zip

$ sudo unzip terraform_1.1.0_linux_amd64.zip -d /usr/local/bin/

#Export terraform binary path temporarily

$ export PATH=$PATH:/usr/local/bin

# On your Ec2 instance Security group, Open port 8080

On your Ec2 instance: security credentials----> configure access key and secret key to authenticate user to provision in server

Connect to Jenkins server on your web browser using publicip:8080

On Jenkins Dashboard, Go to manage plugins; search for Terraform --- select icon ---- click on install without restart

Integrate Jenkins with Github (global credentials)

Create a new jenkins pipeline job

After successful pipeline job

Activate webook trigger for continued automation for proof of task.

Please Contact for more enquiries.

