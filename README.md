# [hdwallet][Python HDWallet]-[socat][Socat]-docker

A container that serves an HTTP API that can be used to generate HD wallets and addresses.

## Usage

Run the following command to start the server on port `1234`.

```shell
docker run --pull always --rm --name hdwallet-socat \
    -p 1234:1234 \
    ghcr.io/nedix/hdwallet-socat-docker
```

Send a test request by navigating to the interactive documentation on http://127.0.0.1:1234/docs.

You may alternatively import the [OpenAPI documentation][Swagger] into your favorite API testing tool.

## Attribution

Powered by [Python HDWallet] and [Socat].

[Swagger]: https://github.com/nedix/hdwallet-socat-docker/blob/main/rootfs/var/www/html/swagger.json
[Python HDWallet]: https://github.com/meherett/python-hdwallet
[Socat]: http://www.dest-unreach.org/socat/
