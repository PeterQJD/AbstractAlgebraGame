FROM node:20

WORKDIR /

COPY ./lean-toolchain /lean-toolchain

USER node

WORKDIR /home/node

RUN git clone --depth 1 https://github.com/leanprover-community/lean4game.git

WORKDIR /home/node/lean4game
RUN npm install

WORKDIR /

USER root

ENV ELAN_HOME=/usr/local/elan \
  PATH=/usr/local/elan/bin:$PATH

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN export LEAN_VERSION="$(cat /lean-toolchain)" && \
  curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y --no-modify-path --default-toolchain $LEAN_VERSION; \
    chmod -R a+w $ELAN_HOME; \
    elan --version; \
    lean --version; \
    leanc --version; \
    lake --version;
