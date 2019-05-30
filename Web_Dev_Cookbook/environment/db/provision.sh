sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse"

sudo apt-get update -y
sudo apt-get upgrade -y

# sudo apt-get install mongodb-org=3.2.18 -y
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

sudo rm /etc/mongod.conf
sudo ln -s /home/ubuntu/environment/mongod.conf /etc/mongod.conf

export LANGUAGE=en_US.URF-8

export LANG=en_US.UTF-8

export LC_ALL=en_US.UTF-8

locale-gen en_US.UTF-8

sudo systemctl restart mongod
sudo systemctl enable mongod
