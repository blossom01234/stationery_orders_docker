FROM ubuntu:24.04

LABEL version="1.0"
LABEL description="app"

RUN apt-get update -y

# タイムゾーン設定
RUN apt-get install tzdata -y
RUN ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get upgrade -y
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    libffi-dev \
    libyaml-dev \
    mysql-client

RUN mkdir /project
WORKDIR /project
# rbenvのインストール
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc

RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

RUN echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

# シェルの再読み込み
SHELL ["/bin/bash", "-c"]

# 環境変数の設定
ENV PATH="/root/.rbenv/bin:/root/.rbenv/plugins/ruby-build/bin:$PATH"

# rbenvを使用してRubyのインストール
RUN rbenv install 3.3.3
RUN rbenv global 3.3.3


WORKDIR /project
RUN git clone https://github.com/blossom01234/stationery_orders.git
WORKDIR /project/stationery_orders
RUN /root/.rbenv/shims/bundle install

ENTRYPOINT ["/bin/sh", "-c", "while :; do sleep 10; done"]
