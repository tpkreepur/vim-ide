# Filename: Dockerfile
FROM alpine:3.18

ENV TERM xterm-256color
ENV POSH_HOME /usr/src/vim-ide/.posh
ENV HOME /usr/src/vim-ide


WORKDIR /usr/src/vim-ide
COPY . .

RUN apk update && apk add --no-cache \
  bash \
  curl \
  git \
  python3 \
  python3-dev \
  py3-pip \
  py3-setuptools \
  py3-wheel \
  vim \
  ack \
  zip \
  && rm -rf /var/cache/apk/* \
  && pip3 install --upgrade pip \
  && pip3 install --upgrade setuptools \
  && pip3 install --upgrade virtualenv

RUN mkdir -p ~/.vim/bundle \
  && mkdir -p ~/.vundle/plugins \
  && mkdir -p ~/.posh/themes \
  && curl -s https://ohmyposh.dev/install.sh | bash -s \
  && mv ~/conf/jandedobbleer.omp.json ~/.posh/themes/ \
  && cat ~/conf/home.bashrc >> ~/.bashrc \
  && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
  && echo ~/conf/home.vimrc >> ~/.vimrc

CMD ["/bin/bash"]