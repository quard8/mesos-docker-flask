FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install flask

RUN mkdir /app

ADD ./ /app

WORKDIR /app

EXPOSE 5000