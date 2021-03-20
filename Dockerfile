FROM golang:1.16

RUN go install github.com/liamg/gifwrap/cmd/gifwrap@latest

ENV TERM=xterm-256color

CMD ["gifwrap", "-f", "https://media.giphy.com/media/QMHoU66sBXqqLqYvGO/giphy.gif"]

