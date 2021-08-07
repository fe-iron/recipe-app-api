From python:3.9-alpine
MAINTAINER Faiz Elahi

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR ./app /app
COPY ./app /app

RUN adduser -D user
USER user
