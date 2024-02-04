FROM ubuntu:23.10
RUN apt update
RUN apt upgrade -y
RUN apt install -y bash curl file git unzip which xz-utils zip snap
RUN git clone https://github.com/flutter/flutter /usr/local/flutter
ENV PATH="/usr/local/flutter/bin:${PATH}"
RUN flutter channel stable
RUN flutter upgrade