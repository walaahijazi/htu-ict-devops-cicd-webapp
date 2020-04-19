!#/bin/bash
sudo wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz

sudo apt install gunicorn3

pip install -r requirements.txt

alias activate=". ../.env/bin/activate"

pip install gunicorn flask

mkdir ~/myproject
cd ~/myproject
python3.8 -m venv myprojectenv
source myprojectenv/bin/activate

