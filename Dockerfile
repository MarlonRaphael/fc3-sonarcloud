FROM golang:latest

LABEL authors="Marlon Raphael"

WORKDIR '/app'

COPY . .

RUN go mod init project
RUN go mod tidy
RUN go mod download
RUN go build -o sum

CMD ["go test -coverprofile=coverage.out"]