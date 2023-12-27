ARG ALPINE_VERSION=3.18
ARG HDWALLET_VERSION=2.2.0
ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION}-alpine${ALPINE_VERSION}

RUN apk add --virtual .build-deps \
        build-base \
    && apk add \
        bash \
        socat \
    && pip install \
        click_aliases \
        hdwallet==${HDWALLET_VERSION} \
        tabulate \
    && apk del .build-deps

ADD rootfs /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 1234
