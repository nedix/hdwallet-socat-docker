# [hdwallet][python-hdwallet]-[socat]-docker

HTTP API to generate HD wallets and addresses.

## Usage

#### Start the HTTP server

This example command starts the server on port `80`.

```shell
docker run --pull always --rm --name hdwallet-socat \
    -p 80:1234 \
    ghcr.io/nedix/hdwallet-socat-docker
```

#### Refer to the API documentation

Navigate to http://127.0.0.1/docs to send a test request.
You may also import the OpenAPI documentation ([swagger.json][swagger]) into your favorite API testing tool.

<hr>

## Attribution

Powered by [python-hdwallet] and [socat].

[swagger]: https://github.com/nedix/hdwallet-socat-docker/blob/main/rootfs/var/www/html/swagger.json
[python-hdwallet]: https://github.com/meherett/python-hdwallet
[socat]: http://www.dest-unreach.org/socat/
