FROM python:3.9

WORKDIR /home/docker/code

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends \
        cron \
    && apt-get -qq autoremove \
    && apt-get -qq clean

COPY . /home/docker/code

RUN cp /home/docker/code/cronjob /etc/cron.d/cronjob
RUN chmod +x /etc/cron.d/cronjob
RUN crontab /etc/cron.d/cronjob

CMD ["cron", "-f"]
