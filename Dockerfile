FROM python:slim-bullseye

RUN apt-get update \
    && apt-get install -y \
    texlive-xetex texlive-fonts-recommended texlive-plain-generic \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY * /app
WORKDIR /app