#python2 scrapy
FROM python:2-alpine
RUN echo "Asia/Shanghai" > /etc/timezone
LABEL cn.crotondata.docker.project="spiders"
#RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.7/main" > /etc/apk/repositories
RUN apk add --update --no-cache\ 
    gcc \
    openssl-dev \
    libxml2 \
    libxml2-dev \
    libffi \
    libffi-dev \
    libxslt-dev \
  && pip install scrapy \
  && rm -rf /var/cache/apk/*
