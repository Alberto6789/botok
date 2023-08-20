FROM python:3.7.13

RUN apt-get update && apt-get install --yes pipenv
WORKDIR /usr/src/app

COPY ./ /usr/src/app/
RUN pipenv install --deploy --ignore-pipfile
CMD pipenv run python botclient.py
HOST 0.0.0.0
PORT 10000
