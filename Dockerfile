FROM golang:latest

EXPOSE 25

WORKDIR /go/src/github.com/dustywilson/remailer
COPY . .

RUN go get -v github.com/dustywilson/remailer github.com/flashmob/go-guerrilla
RUN go install -v github.com/dustywilson/remailer/cmd/server

WORKDIR /config
CMD ["/go/bin/server"]