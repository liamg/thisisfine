FROM golang:1.19

RUN CGO_ENABLED=0 go install github.com/liamg/gifwrap/cmd/gifwrap@v0.0.7

FROM scratch

COPY --from=0 /go/bin/gifwrap /gifwrap

ENV TERM=xterm-256color

CMD ["/gifwrap", "-k", "-f", "https://media.giphy.com/media/QMHoU66sBXqqLqYvGO/giphy.gif"]

