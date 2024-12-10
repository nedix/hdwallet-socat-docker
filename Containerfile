ARG ALPINE_VERSION=3.21
ARG HDWALLET_VERSION=2.2.1
ARG PYTHON_VERSION=3.13

FROM python:${PYTHON_VERSION}-alpine${ALPINE_VERSION}

ARG HDWALLET_VERSION

RUN apk add --virtual .build-deps \
        build-base \
    && apk add \
        bash \
        socat \
    && pip install \
        click_aliases \
        hdwallet=="$HDWALLET_VERSION" \
        tabulate \
    && apk del .build-deps

ADD rootfs /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80
