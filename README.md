# hdwallet-socat-docker

Docker HTTP server to generate addresses making use of [python-hdwallet](https://github.com/meherett/python-hdwallet) and socat.

## Usage

**Start HTTP server on port 1234**

```shell
docker run --rm -p 1234:1234 --name hdwallet-socat ghcr.io/nedix/hdwallet-socat-docker
```

**Browse API documentation**

[http://localhost:1234/docs](http://localhost:1234/docs)

## Development

1. Clone this repo
2. Execute the `make setup` command
3. Execute the `make up` command
