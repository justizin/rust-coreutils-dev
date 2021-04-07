FROM debian:buster

RUN apt update

RUN apt install -y vim less file
RUN apt install -y build-essential
RUN apt install -y rustc cargo

COPY sources.list.d-experimental.list /etc/apt/sources.list.d/experimental.list
RUN apt update
#RUN apt -t experimental install -y rust-coreutils

COPY rust-coreutils-replace.sh /
#RUN /rust-coreutils-replace.sh
