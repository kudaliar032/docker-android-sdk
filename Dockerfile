FROM openjdk:8-jdk-stretch

LABEL maintainer="aditya@klim.or.id"

ENV DEBIAN_FRONTEND noninteractive
ENV ANDROID_HOME=/sdk/
ENV VERSION_SDK_TOOLS "4333796"

WORKDIR /sdk

RUN apt-get --quiet update --yes \
  && apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1 \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archives/*

RUN wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-${VERSION_SDK_TOOLS}.zip \
  && unzip android-sdk.zip \
  && rm -rf android-sdk.zip

RUN mkdir /root/.android/ \
  && touch /root/.android/repositories.cfg

RUN wget --quiet --output-document=gradle.zip https://services.gradle.org/distributions/gradle-5.6-bin.zip \
  && unzip gradle.zip \
  && rm -rf gradle.zip

ENV PATH=$PATH:/sdk/platform-tools/:/sdk/gradle-5.6/bin:/sdk/tools/bin
