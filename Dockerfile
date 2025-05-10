# Dockerfile
FROM golang:1.23 AS builder

WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o snippetbox ./cmd/web

FROM debian:bookworm-slim AS final
WORKDIR /app
COPY --from=builder /app/snippetbox /app/
COPY /ui /app/ui
COPY /migrations /app/migrations
#COPY /config /app/config
EXPOSE 4000
CMD ["./snippetbox"]
