FROM golang:1.14-alpine

RUN mkdir /gorepo

COPY . /gorepo

WORKDIR /gorepo

RUN go build -o main

CMD ["/gorepo/main"]

EXPOSE 8080