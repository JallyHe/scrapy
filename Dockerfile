FROM ubuntu:trusty
 
RUN apt-get update && \
	apt-get install -y python python-pip python-dev tesseract-ocr libmysqlclient-dev libjpeg-dev libxml2-dev libxslt1-dev zlib1g-dev libffi-dev libssl-dev

RUN pip install scrapy
