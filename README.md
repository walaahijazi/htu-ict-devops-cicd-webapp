# Python/Flask tutorial sample for Visual Studio Code

## Resources

* [Python](https://www.python.org/)
* [Flask](https://flask.palletsprojects.com/en/1.1.x/)
* [Venv](https://docs.python.org/3/tutorial/venv.html)
* [Gunicorn](https://gunicorn.org/)
* [uWSGI](https://uwsgi-docs.readthedocs.io/en/latest/)
* [HTTP Status Codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)

## Assignment: Building a CI/CD Pipeline

For this assignment you are required to build a CI/CD Azure pipeline which deploys a Flask based web application.

This pipeline will do the following: 

1) Run any necessary checks on the files in your build directory.
2) Copy *all* required folders from your build directory to the deployment environment.
3) Check and install any required packages on your deployment environment.
4) Initialize, configure, and activate the Python virtual environment.
   * **Hint:** Read about `venv`.
5) Install all required project dependencies.
   * **Hint:** Project dependencies are found in `requirments.txt`.
6) Run the server using Gunicorn.
   * **Hint:** Bind to the public interface and any random port `0.0.0.0:4321` for example).
   * **Hint:** `gunicorn --bind=0.0.0.0 --workers=4 hello:app` this command starts the `app` module in the `hello` script.
7) Check if the deployment was successful by the testing the HTTP status code of a response to your web application.

`NOTE: This pipeline is an example which you can use to rough out your own ideas.`


## Project Structure

The repository contains the following files:

* `hello_app/` -- The root for the web application. *You should not need to change anything there, unless you feel like it :)*.
* `hello.py` -- This script imports the module `app` from `hello_app`.
* `README.md` -- This document.
* `requirements.txt` -- List of dependencies needed for the web application.
* `test_test1.py` -- A file you can use for testing purposes. **Hint:** You can test if your Python interpretur is properly setup.
* `uwsgi.ini` -- A configuration file for the uWSGI server. **Hint:** You use this to configure the server for production.

## HTTP Endpoints

The project exposes the following HTTP endpoints:

* `/home` -- The home page.
* `/about` -- The about page.
* `/contact` -- The contact page.
* `/hello/{NAME}` -- This endpoint generates a page using a Ninja template.

## General Notes

* The web application is written in [Python](https://www.python.org/), and based on the [Flask](https://flask.palletsprojects.com/en/1.1.x/) web framework. 
* You are provided a sample web application to deploy. *Do not worry, you are not required to write any code in Python.*
* The code for the web application you are going to deploy can be found under its own *module* in the `hello_app` folder.
* Try to create a diagram which details your pipeline steps. Any additional information you add may help you better understand the picture.
* Copy *all* required folders from your build directory to the deployment environment. Make sure you keep your workspace organized.
* You need to check and configure the environment required for this project to run **as a part of your Continuous Deployment** process.
  * **Note:** This means you cannot manually setup all of the environment and just copy and run your code.
* Try to utilize scripts, then configure script steps in your pipeline to run them. 
  * For **example** `setup-environment.sh`, `run_server.sh` and `healthcheck.sh`, etc.
* You can also build a `/healthcheck` endpoint to check the status of your web application.

