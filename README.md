# webapp
cd Downloads
chmod 400 webapp.pem
ssh -i "webapp.pem" ec2-user@ec2-184-72-68-27.compute-1.amazonaws.com

// Create github repo 
git clone https://github.com/atulkamble/webapp
cd webapp

sudo yum install git -y
git config --global user.name "Atul Kamble"
git config --global user.email "atul_kamble@hotmail.com"

sudo yum update -y
sudo yum install ruby -y
sudo yum install wget -y
cd /home/ec2-user
sudo wget https://aws-codedeploy-us-east-2.s3.us-east-2.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
sudo service codedeploy-agent status

npm init -y
npm install express
touch app.js
sudo nano app.js

// Copy instance ip:3000 to web browser
http://184.72.68.27:3000/

sudo touch appspec.yml
sudo nano appspec.yml 
sudo touch install_dependencies.sh
sudo nano install_dependencies.sh
sudo touch start_server.sh
sudo nano start_server.sh
git add .
git commit -m "Added appspec.yml and deployment scripts"
git push origin main

sudo touch buildspec.yml
sudo nano buildspec.yml
