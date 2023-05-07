FROM  python:3.8.10-alpine

# MAINTAINER Aakash ajangid25@gmail.com

WORKDIR /app

COPY . /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip

RUN pip install -r requirements.txt