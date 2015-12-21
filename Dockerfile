# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go get github.com/cube2222/Server
RUN go install github.com/cube2222/Server

# Run the outyet command by default when the container starts.
ENTRYPOINT /go/bin/Server

# Document that the service listens on port 8080.
EXPOSE 3000