FROM ubuntu:18.04
WORKDIR /app

RUN apt update && apt install -y wget tmux slime
RUN wget wget https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.g
RUN tar -xvf gotty_linux_amd64.tar.gz &&  rm gotty_linux_amd64.tar.gz

CMD ["./gotty  -w tmux"]
