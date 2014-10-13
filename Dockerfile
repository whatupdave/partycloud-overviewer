FROM ubuntu:14.04
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

RUN apt-get update
RUN apt-get install -y wget
RUN wget -O - http://overviewer.org/debian/overviewer.gpg.asc | sudo apt-key add -

RUN echo "deb http://overviewer.org/debian ./" > /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python python-numpy python-imaging minecraft-overviewer

ENV VERSION 1.8

RUN wget --no-check-certificate https://s3.amazonaws.com/Minecraft.Download/versions/${VERSION}/${VERSION}.jar -P ~/.minecraft/versions/${VERSION}/

ENTRYPOINT ["overviewer.py"]
CMD ["/minecraft/world", "/www"]