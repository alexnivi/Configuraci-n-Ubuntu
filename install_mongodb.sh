# Install Mongo db in Ubuntu 18

#Run the following command to import the MongoDB public GPG key −
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

#Create a /etc/apt/sources.list.d/mongodb.list file using the following command.
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' \
   | sudo tee /etc/apt/sources.list.d/mongodb.list

#Now issue the following command to update the repository −
sudo apt-get update

#Next install the MongoDB by using the following command −
sudo apt-get install -y mongodb