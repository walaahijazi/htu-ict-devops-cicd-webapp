!#/bin/bash
sudo wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz

sudo apt install gunicorn3

python3 -m venv
source . /bin/activate

pip install -r requirements.txt

gunicorn --bind=0.0.0.0:5000 --workers=4 



