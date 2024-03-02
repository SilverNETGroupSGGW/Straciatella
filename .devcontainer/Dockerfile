FROM ubuntu:latest as installer

RUN apt update
RUN apt install -y unzip curl git openjdk-21-jre-headless

# Flutter
RUN git clone -b stable https://github.com/flutter/flutter /usr/local/flutter
RUN chmod -R +x /usr/local/flutter
RUN /usr/local/flutter/bin/flutter upgrade

# Android SDK
ADD https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip /tmp/cmdline-tools.zip
RUN mkdir -p /usr/lib/android-sdk/cmdline-tools
RUN unzip /tmp/cmdline-tools.zip -d /usr/lib/android-sdk/cmdline-tools
RUN mv /usr/lib/android-sdk/cmdline-tools/cmdline-tools /usr/lib/android-sdk/cmdline-tools/tools
RUN yes | /usr/lib/android-sdk/cmdline-tools/tools/bin/sdkmanager --licenses
RUN /usr/lib/android-sdk/cmdline-tools/tools/bin/sdkmanager --update
RUN /usr/lib/android-sdk/cmdline-tools/tools/bin/sdkmanager "platform-tools" "cmdline-tools;latest"

FROM mcr.microsoft.com/devcontainers/base:latest

ENV TZ="Europe/Warsaw"
ENV ANDROID_SDK_ROOT="/usr/lib/android-sdk"
ENV FLUTTER_HOME="/usr/local/flutter"
ENV PATH="${ANDROID_SDK_ROOT}/cmdline-tools/tools/bin:${PATH}"
ENV PATH="${ANDROID_SDK_ROOT}/platform-tools:${PATH}"
ENV PATH="/usr/local/flutter/bin:${PATH}"

COPY --from=installer /usr/lib/android-sdk /usr/lib/android-sdk
COPY --from=installer /usr/local/flutter /usr/local/flutter

RUN chown -R vscode:vscode /usr/lib/android-sdk
RUN chown -R vscode:vscode /usr/local/flutter

RUN apt update
RUN apt upgrade -y
RUN apt install -y openjdk-17-jre-headless
RUN flutter config --android-sdk=${ANDROID_SDK_ROOT}