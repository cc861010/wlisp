# Remote Usage
```
docker run -d -p 8080:8080 -p 22:22 cc861010/wlisp
```
1. open http://dockerhost:8080
2. ssh bear@dockerhost then open emacs or tmux

##### set username and password by -e overwrite the default value
```
docker run -d -p 8080:8080 -p 22:22 -e USRE_NAME=cc -e USRE_PASSWORD=ff  cc861010/wlisp
USRE_NAME, default: bear
USRE_PASSWORD, default: bear
```


# Local Usage
```
docker run -it cc861010/wlisp emacs
```
* open emacs with local terminal
