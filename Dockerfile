FROM python:3

WORKDIR /app

RUN apt-get update && apt-get install -y cron && apt-get clean

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

COPY run_call_api.sh /app/run_call_api.sh

COPY crontab.txt /etc/cron.d/my-cron

RUN chmod 0644 /etc/cron.d/my-cron

RUN crontab /etc/cron.d/my-cron
