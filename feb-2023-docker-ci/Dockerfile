FROM golang:1.20-alpine AS buildStage
WORKDIR /goApp
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o mainExecutable .

FROM alpine:3.17
WORKDIR /rootContainer
COPY --from=buildStage /goApp/mainExecutable .
EXPOSE 8080
CMD ["./mainExecutable"]
