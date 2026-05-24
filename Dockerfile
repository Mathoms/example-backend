# Get the docker image for the Go language
FROM golang:latest

# Set the working directory
WORKDIR /myapp

# Copy project files
COPY . .

# Generate binary named "server". '-o server' is included for defensive programming. As per the readme, running 'go build' will automatically name the binary server
RUN go build -o server

# Required by the webhost Render
EXPOSE 10000

# REQUEST ORIGIN settings will be configured in the Render dashboard

# Excecute the file
CMD ["./server"]
