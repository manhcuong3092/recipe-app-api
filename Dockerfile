FROM python:3.8-alpine
MAINTAINER Cuong

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/

RUN adduser -D user
USER user