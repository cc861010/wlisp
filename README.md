# Usage
```
docker run -d -p 8080:8080 -p 22:22 cc861010/wlisp
```
* open http://dockerhost:8080 with browser
* ssh bear@dockerhost then open emacs


# Config username and password by -e
```
docker run -d -p 8080:8080 -p 22:22 -e USRE_NAME=cc -e USRE_PASSWORD=ff  cc861010/wlisp 
USRE_NAME, default: bear
USRE_PASSWORD, default: bear
```
