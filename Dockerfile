FROM golang:1.16-alpine as gobuilder
ADD . /gobase/
WORKDIR /gobase/
RUN go build -o myapp

FROM alpine

RUN mkdir /app
COPY --from=gobuilder /gobase/myapp /app/
WORKDIR /app

RUN chmod +x myapp
RUN adduser -D -g '' gouser
RUN chown -R gouser:gouser /app

USER gouser

ENTRYPOINT ["/app/myapp"]
