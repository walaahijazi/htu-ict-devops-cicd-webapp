!#/bin/bash
sudo wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz

sudo apt install gunicorn3

pip install gunicorn flask

python3 -m pip install --user virtualenv

alias activate=". ../.env/bin/activate"



pip install -r requirements.txt


gunicorn --bind=0.0.0.0:5000 --workers=4 hello:app

