FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y apt-utils python3 python3-pip tor

COPY ./app /app

# RUN pip install -r /app/requirements.txt

CMD service tor start && torify python3 /app/main.py
