# Base image
FROM alpine:latest

# Install required dependencies
RUN apk update && apk add --no-cache \
    build-base \
    go \
    nim \
    ruby \
    python3

# Set the working directory
WORKDIR /app

# Set the entry point
CMD ["/bin/sh", "-c", "for folder in \"$@\"; do \
                          if [ -d \"$folder\" ]; then \
                            for file in \"$folder\"/*; do \
                              case \"$file\" in \
                                *.go) go run \"$file\" ;; \
                                *.nim) nim c -r \"$file\" ;; \
                                *.c) gcc -o program \"$file\" && ./program ;; \
                                *.rb) ruby \"$file\" ;; \
                                *.py) python3 \"$file\" ;; \
                              esac; \
                            done; \
                          else \
                            echo \"Folder '$folder' does not exist.\"; \
                          fi; \
                      done"]
