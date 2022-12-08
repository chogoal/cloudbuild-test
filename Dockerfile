FROM python:3.7.8-slim

RUN apt-get -y update
RUN apt-get install -y vim
RUN apt-get install -y telnet
RUN apt-get install -y wget

RUN python -m pip install --upgrade pip
RUN python -m pip install flask

COPY . /app
WORKDIR /app

ENTRYPOINT ["python"]
CMD ["app.py"]

EXPOSE 5000
