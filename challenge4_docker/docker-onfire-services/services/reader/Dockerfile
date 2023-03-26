FROM golang
WORKDIR /go/src/github.com/services/go
ADD . /go/src/github.com/services/go
#ENV GO111MODULE=on

#RUN go mod init 
RUN go mod init mymodule && go mod tidy
RUN go get github.com/rs/cors
RUN go get github.com/go-redis/redis
RUN go build

EXPOSE 8081

ENTRYPOINT ["go","run","main.go"]
