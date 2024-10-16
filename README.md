# [hdwallet][Python HDWallet]-[socat][Socat]-container

A container that can be used to generate HD wallets and addresses through an HTTP API.

## Usage

Run the following command to start the server on port `8080`.

```shell
docker run --pull always --rm --name hdwallet-socat \
    -p 8080:80 \
    nedix/hdwallet
```

Send a test request by navigating to the interactive documentation on http://127.0.0.1:1234/docs.

You can also import the [OpenAPI documentation][Swagger] into your favorite API testing tool.

## Attribution

- [Python HDWallet] ([License](https://raw.githubusercontent.com/meherett/python-hdwallet/master/LICENSE))
- [Socat] ([License](https://repo.or.cz/socat.git/blob_plain/HEAD:/COPYING))

[Python HDWallet]: https://github.com/meherett/python-hdwallet
[Socat]: http://www.dest-unreach.org/socat/
[Swagger]: https://github.com/nedix/hdwallet-socat-docker/blob/main/rootfs/var/www/html/swagger.json
