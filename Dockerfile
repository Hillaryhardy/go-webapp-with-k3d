# Base Image
FROM golang:1.17-alpine

# Make app directory
RUN mkdir /app

# Copy all content to the app directory
ADD . /app

# Make app directory the working directory
WORKDIR /app

# Download any required modules
RUN go mod download

# Build the program to create an executable binary
RUN go build -o webapp .

# Set the startup command
CMD ["/app/webapp"]