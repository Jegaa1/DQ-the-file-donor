FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y

COPY requirements.txt .

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

WORKDIR . .

COPY . .

CMD ["bash", "start.sh"]