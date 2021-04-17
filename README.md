# Go Base Repository
This is a base go repository for my pet projects.
## Useful commands
### go build
```shell
go build
```
### go fmt
```shell
go fmt ./...
```
### go test
```shell
go test ./...
```
### go cover
```shell
go test -coverprofile=cover.out ./...
go tool cover -html=cover.out
```
## docker build and run
```shell
docker build -t go-base:dev .
docker run -it go-base:dev
```
## docker-compose run
```shell
docker-compose up --build
```