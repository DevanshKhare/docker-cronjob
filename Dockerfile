FROM python:3

WORKDIR /app

RUN apt-get update && apt-get install -y cron && apt-get clean

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt
