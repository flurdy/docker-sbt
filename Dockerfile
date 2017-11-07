from openjdk:8u131-jdk-alpine

MAINTAINER Ivar Abrahamsen <@flurdy>

RUN apk update && apk add bash wget unzip

ENV SBT_VERSION 1.0.1

WORKDIR /opt

RUN wget --progress=dot:mega https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.zip && \
  unzip sbt-$SBT_VERSION.zip && \
  ln -s /opt/sbt/bin/sbt /usr/local/bin/sbt && \
  rm sbt-$SBT_VERSION.zip

