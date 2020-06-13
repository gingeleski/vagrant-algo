# VAGRANT-ALGO SETUP

# Make sure existing packages are up-to-date before we install new ones
sudo apt-get --assume-yes update
sudo apt-get --assume-yes upgrade

# Install Git
sudo apt-get --assume-yes install git

# Install Python
sudo apt-get --assume-yes install python3 python3-pip python3-venv

# Clone the repo into vagrant user's home after making sure exists
mkdir -p /home/vagrant
cd /home/vagrant
git clone https://github.com/trailofbits/algo.git

# Do what else of the algo setup that we can without user interaction
cd algo
sudo chmod 777 algo
python3 -m pip install virtualenv
python3 -m virtualenv --python="$(command -v python3)" .env && source .env/bin/activate && python -m pip install -U pip virtualenv && python -m pip install -r requirements.txt
