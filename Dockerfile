FROM ubuntu:trusty
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN apt-get update && \
	apt-get install -y python python-pip python-dev libmysqlclient-dev libxml2-dev libxslt1-dev zlib1g-dev libffi-dev libssl-dev

RUN pip install scrapy
