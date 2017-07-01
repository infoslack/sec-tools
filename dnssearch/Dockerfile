FROM golang:1.8 as build-stage
ENV REPO https://github.com/evilsocket/dnssearch.git
WORKDIR /go/src/github.com/evilsocket/dnssearch
RUN git clone $REPO . && go get && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o dnssearch .

FROM scratch
WORKDIR /app
COPY --from=build-stage /go/src/github.com/evilsocket/dnssearch/dnssearch /app
COPY --from=build-stage /go/src/github.com/evilsocket/dnssearch/names.txt /app
ENTRYPOINT ["/app/dnssearch"]
