FROM pytorch/pytorch:latest

WORKDIR /app

COPY requirements.txt ./

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
RUN pip install -r requirements.txt

COPY . .
