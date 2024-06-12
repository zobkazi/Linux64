# sudo apt update && upgrade

sudo apt-get install gnupg curl

clear

curl -fsSL https://pgp.mongodb.com/server-7.0.asc |
   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
      --dearmor

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

sudo apt-get update

sudo apt-get install -y mongodb-org

sudo apt-get update

echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-database hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-mongosh hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections

sudo apt-get update

sudo systemctl start mongod

sudo systemctl daemon-reload

sudo systemctl enable mongod

sudo systemctl status mongod
