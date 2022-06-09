sudo apt update

# install java dk and re
sudo apt install default-jre -y
sudo apt install default-jdk -y

# getting the jenkins package / binary  and adding to source list & updating
## Binanay / package is what you install 
## Source list is so it becomes available when you do sudo apt install

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update

# Installing Jenkins
sudo apt install jenkins -y 

# Starting Jenkins
sudo systemctl start jenkins

echo "<<<<<<<<<<<<<<<<<"

# ssh into jenkins machine or add this to your script

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "^^^^^^^^^^^^^^^^^^^^"