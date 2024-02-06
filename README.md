#  **<span style="color:green">Loreon Technologies </span>**
### **<span style="color:green">Contacts: +2348156022209<br> WebSite : <http://loreon.io/></span>**
### **Email: loreon.ilerioluwa@gmail.com**



## Apache Maven Installation And Setup In AWS EC2 Redhat Instance.
##### Prerequisite
+ AWS Acccount.
+ Create Security Group and open Required ports.
   + 22 ..etc
+ Create Redhat EC2 T2.medium Instance with 4GB of RAM.
+ Attach Security Group to EC2 Instance.
+ Install java openJDK 1.8+

### Install Java JDK 1.8+  and other softares (GIT, wget and tree)

``` sh
# install Java JDK 1.8+ as a pre-requisit for maven to run.

sudo hostnamectl set-hostname maven
sudo su - ec2-user
cd /opt
sudo yum install wget nano tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
java -version
git --version
```

## 2. Download, extract and Install Maven
``` sh
#Step1) Download the Maven Software
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip
sudo unzip apache-maven-3.8.6-bin.zip
sudo rm -rf apache-maven-3.8.6-bin.zip
sudo mv apache-maven-3.8.6/ maven
```
## .#Step3) Set Environmental Variable  - For Specific User eg ec2-user
``` sh
vi ~/.bash_profile  # and add the lines below
export M2_HOME=/opt/maven
export PATH=$PATH:$M2_HOME/bin
```
## .#Step4) Refresh the profile file and Verify if maven is running
```sh
source ~/.bash_profile
mvn -version
```


## Apache Tomcat Installation And Setup In AWS EC2 Redhat Instance.
##### Prerequisite
+ AWS Acccount.
+ Create Redhat EC2 T2.micro Instance.
+ Create Security Group and open Tomcat ports or Required ports.
   + 8080 ..etc
+ Attach Security Group to EC2 Instance.
+ Install java openJDK 1.8+

### Install Java JDK 1.8+ 

``` sh
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
sudo hostnamectl set-hostname tomcat
cd /opt 
sudo yum install git wget -y
sudo yum install java-1.8.0-openjdk-devel -y
# install wget unzip packages.
sudo yum install wget unzip -y
```
## Install Tomcat version 9.0.69
### Download and extract the tomcat server
``` sh
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz
sudo tar -xvf apache-tomcat-9.0.69.tar.gz
sudo rm -rf apache-tomcat-9.0.69.tar.gz
### rename tomcat for good naming convention
sudo mv apache-tomcat-9.0.69 tomcat9
### assign executable permissions to the tomcat home directory
sudo chmod 777 -R /opt/tomcat9
sudo chown ec2-user -R /opt/tomcat9
### start tomcat
sh /opt/tomcat9/bin/startup.sh
# create a soft link to start and stop tomcat
# This will enable us to manage tomcat as a service
sudo ln -s /opt/tomcat9/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat9/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat
sudo su - ec2-user
```

