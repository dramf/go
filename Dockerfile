FROM golang:alpine as gobuilder
RUN apk add --update make git
ADD . /gobase/
WORKDIR /gobase/
ENV GOPATH=$GOPATH:/gobase
RUN make all

FROM alpine

RUN mkdir /app
COPY --from=gobuilder /gobase/bin/goapp /app/
WORKDIR /app

RUN chmod +x goapp
RUN adduser -D -g '' gouser
RUN chown -R gouser:gouser /app

USER gouser

ENTRYPOINT ["/app/goapp"]
