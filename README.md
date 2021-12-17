# Data2bot Task
This task will provision a RedHat 8 instance using Terraform as Iac and Jenkins tool for our CI-CD pipeline.
# Jenkins Installation And Setup In AWS EC2 Redhat Instnace.

Prerequisite

AWS Acccount.

Create Redhat EC2 t2.medium Instance with 4GB RAM.

Create Security Group and open Required ports

8080 got Jenkins, ..etc

Attach Security Group to EC2 Instance.

# Install Java JDK 1.8+ as Jenkins pre-requisite
# Install other softwares - git, unzip and wget

sudo yum -y install unzip wget tree git
sudo wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm

sudo yum install jdk-8u131-linux-x64.rpm -y
sudo yum -y install unzip wget tree git

# Add Jenkins Repository and key

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

cd /etc/yum.repos.d/

sudo curl -O https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Install Jenkins

sudo yum -y install jenkins  --nobest

start Jenkins service and verify Jenkins is running

sudo systemctl start jenkins

sudo systemctl enable jenkins

sudo systemctl status jenkins

Access Jenkins from the browser

public-ip:8080

curl ifconfig.co 

get jenkins initial admin password

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

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

