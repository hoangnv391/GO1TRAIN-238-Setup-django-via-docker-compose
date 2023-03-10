# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /clone
COPY ./source/requirements.txt /clone/
RUN pip install -r requirements.txt
COPY ./source/ /clone/