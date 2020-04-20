

!#/bin/bash
sudo wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz

python3 -m pip install --user virtualenv


sudo apt install gunicorn3

pip install -r requirements.txt

alias activate=". ../.env/bin/activate"

gunicorn --bind=0.0.0.0:5000 --workers=4 hello:py

pip install gunicorn flask
