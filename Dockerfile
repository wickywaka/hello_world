FROM ubuntu:latest as build

COPY . /app
WORKDIR /app
RUN apt-get -y update
RUN apt-get install -y gcc
RUN gcc main.c -o main
CMD ["./main"]

# FROM busybox
# COPY --from=build /app/main /app/main
# RUN chmod +x /app/main
# RUN /app/main
# CMD /app/main
