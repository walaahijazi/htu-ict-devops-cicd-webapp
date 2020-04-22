!#/bin/bash
sudo apt-get install python3-venv
sudo apt-get install pthon3-pip
python3 -m venv test_inv && source test_inv/bin/activate && pip3 install -r requirements.txt && pip3 install gunicorn



gunicorn --bind=0.0.0.0:5000 --workers=4 hello:app
