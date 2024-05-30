# syntax=docker/dockerfile:1

<<<<<<< HEAD
FROM --platform=linux/amd64 openjdk:17-buster
=======
FROM --platform=linux/amd64 ubuntu:20.04
>>>>>>> c8453f9 (🔧 sync)

LABEL version="0.2.60"

# Install OpenJDK, curl, and unzip
RUN apt-get update && apt-get install -y openjdk-17-jdk curl unzip && \
 adduser --uid 99 --gid 100 --home /data --disabled-password minecraft

COPY launch.sh /launch.sh
RUN chmod +x /launch.sh

USER minecraft

VOLUME /data
WORKDIR /data

EXPOSE 25565/tcp

CMD ["/launch.sh"]
