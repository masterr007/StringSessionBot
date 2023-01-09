FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip install -r requirements.txt
RUN mkdir /StringSessionBot
WORKDIR /StringSessionBot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
