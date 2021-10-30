FROM python:3.7-slim

ADD . /srv
WORKDIR /srv
RUN \
    apt-get update && \
    pip install -r requirements.txt

ENTRYPOINT start.sh