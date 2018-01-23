FROM python:3

WORKDIR /usr/src/app

RUN pip install virtualenv \
    && apt update \
    && apt install -y vim \
    && mkdir ~/.virtualenvs \
    && virtualenv -p python3 ~/.virtualenvs/khard \
    && ~/.virtualenvs/khard/bin/pip install khard \
    && mkdir ~/.virtualenvs/bin \
    && ln -s ~/.virtualenvs/khard/bin/khard /usr/local/bin/khard \
    && rm -rf /var/lib/apt/lists/*

ENV EDITOR vim
ENV MERGE_EDITOR vimdiff

CMD khard
