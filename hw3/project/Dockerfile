FROM python:latest

MAINTAINER Aleksey Hotsuts "hotsuts@ukr.net"

WORKDIR /project

COPY . /project

RUN pip install pipenv
RUN pipenv install

CMD ["pipenv", "run", "python", "main.py"]