#!/usr/bin/env sh 

sudo apt update
sudo apt upgrade -y

sudo apt install python3 python3-venv python3-pip nginx nano

mkdir ~/myflaskapp

cd ~/myflaskapp || exit

python3 -m venv venv

source venv/bin/activate

pip install -r requirements.txt

sudo nano /etc/systemd/system/myflaskapp.service

# [Unit]
# Description=Gunicorn instance to serve my Flask app
# After=network.target

# [Service]
# User=flaskusr
# Group=www-data
# WorkingDirectory=/home/flaskusr/myflaskapp
# Environment="PATH=/home/flaskusr/myflaskapp/venv/bin"
# ExecStart=/home/flaskusr/myflaskapp/venv/bin/gunicorn --config gunicorn_config.py application:gunicorn_app

# [Install]
# WantedBy=multi-user.target

#---or 

# [Unit]
# Description=Gunicorn instance to serve myproject
# After=network.target

# [Service]
# User=sammy
# Group=www-data
# WorkingDirectory=/home/sammy/myproject
# Environment="PATH=/home/sammy/myproject/myprojectenv/bin"
# ExecStart=/home/sammy/myproject/myprojectenv/bin/gunicorn --workers 3 --bind unix:myproject.sock -m 007 wsgi:app

# [Install]
# WantedBy=multi-user.target


