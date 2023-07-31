FROM golang:1.20-alpine AS builder
WORKDIR /app

COPY . .
RUN go mod tidy
RUN go build -o main .
CMD ["./main", "-assignor=test"]