FROM ubuntu:18.04
WORKDIR /app

RUN apt update && apt install -y wget tmux slime
RUN apt-get purge --auto-remove && rm -rf /tmp/* /var/lib/apt/lists/* && apt-get -s clean
RUN wget https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz
RUN tar -xvf gotty_linux_amd64.tar.gz &&  rm gotty_linux_amd64.tar.gz

ENV TERM=xterm
CMD ["/app/gotty","-w","emacs"]
