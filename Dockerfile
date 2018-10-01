FROM golang:latest

RUN mkdir -p /app
WORKDIR /app

ADD . /app
RUN go get github.com/gin-gonic/gin
RUN go get -u github.com/jinzhu/gorm

RUN go build ./main.go

EXPOSE 80

CMD ["./main"]
