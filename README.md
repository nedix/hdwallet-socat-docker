# [hdwallet-socat-container](https://github.com/nedix/hdwallet-socat-container)

HTTP API to generate HD wallets and addresses.

## Usage

This example will start the API service on port `8080`.

#### 1. Start the server

```shell
docker run --pull always --rm --name hdwallet-socat \
    -p 8080:80 \
    nedix/hdwallet
```

#### 2. Generate HD wallets and addresses

- Navigate to the interactive documentation on http://127.0.0.1:8080/docs.
OR
- Import the [OpenAPI documentation][Swagger] into your favorite API testing tool.

<hr>

## Attribution

- [Python HDWallet] ([License](https://raw.githubusercontent.com/meherett/python-hdwallet/master/LICENSE))
- [Socat] ([License](https://repo.or.cz/socat.git/blob_plain/HEAD:/COPYING))

[Python HDWallet]: https://github.com/meherett/python-hdwallet
[Socat]: http://www.dest-unreach.org/socat/
[Swagger]: https://raw.githubusercontent.com/nedix/hdwallet-socat-container/refs/heads/main/rootfs/var/www/html/swagger.json
