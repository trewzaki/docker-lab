FROM golang:1.12.7
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix nocgo -o /server
ENTRYPOINT ["/server"]