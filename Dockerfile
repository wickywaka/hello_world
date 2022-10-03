FROM ubuntu:latest

COPY . /app
WORKDIR /app
RUN apt-get -y update
RUN apt-get install -y gcc
RUN gcc main.c -o main
CMD ["/app/main"]
