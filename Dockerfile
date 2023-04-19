# Stage 1: Build the Go binary
FROM golang:1.20-alpine AS build
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 go build -o terraform-log-exporter .

# Stage 2: Create a minimal Docker image using a scratch image
FROM scratch

# Copy the certificates into the image
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

# Copy the binary into the image
COPY --from=build /app/terraform-log-exporter /terraform-log-exporter

# Add a non-root user to run the application
USER 1000:1000

ENV KAPETA_CALLBACK=undefined
ENV KAPETA_CREDENTIALS_TOKEN=undefined

CMD ["/terraform-log-exporter"]
