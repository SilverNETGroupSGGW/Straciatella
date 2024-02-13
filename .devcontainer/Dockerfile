FROM ubuntu:23.10
RUN apt update
RUN apt upgrade -y
ENV TZ="Europe/Warsaw"
RUN apt install -y bash curl file git unzip which xz-utils zip android-sdk
RUN curl https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -o /tmp/cmdline-tools.zip
RUN mkdir -p /usr/lib/android-sdk/cmdline-tools
RUN unzip /tmp/cmdline-tools.zip -d /usr/lib/android-sdk/cmdline-tools
RUN mv /usr/lib/android-sdk/cmdline-tools/cmdline-tools /usr/lib/android-sdk/cmdline-tools/tools
RUN rm /tmp/cmdline-tools.zip
RUN yes | /usr/lib/android-sdk/cmdline-tools/tools/bin/sdkmanager --licenses
RUN git clone https://github.com/flutter/flutter /usr/local/flutter
ENV ANDROID_SDK_ROOT="/usr/lib/android-sdk"
ENV PATH="${ANDROID_SDK_ROOT}/cmdline-tools/tools/bin:${PATH}"
ENV PATH="/usr/local/flutter/bin:${PATH}"
RUN sdkmanager --update
RUN sdkmanager "platform-tools" "cmdline-tools;latest" "platforms;android-34"
RUN flutter channel stable
RUN flutter upgrade
RUN flutter config --android-sdk=${ANDROID_SDK_ROOT}