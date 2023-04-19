# terraform-log-exporter

## Initial Setup

This section is intended to help developers and contributors get a working copy of
`terraform-log-exporter` on their end

Clone this repository

```sh
git clone https://github.com/kapetacom/terraform-log-exporter
cd terraform-log-exporter
```


## Local Development

This section will guide you to setup a fully-functional local copy of `terraform-log-exporter`.


### Installing dependencies

To install all dependencies associated with `terraform-log-exporter`, run the
command

```sh
go mod tidy
```

### Running Tests

```sh
go test ./...
```

### Running `terraform-log-exporter`

To run terraform-log-exporter, use the command

```sh
go run main.go
```
or
```sh
go build && ./terraform-log-exporter
```


