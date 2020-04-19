!#/bin/bash
sudo wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz

sudo apt install gunicorn3

pip install -r requirements.txt

alias activate=". ../.env/bin/activate"
