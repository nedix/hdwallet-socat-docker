FROM python:3.9-alpine

RUN apk add --virtual .build-deps \
        build-base \
    && apk add \
        bash \
        socat \
    && pip install \
        click_aliases \
        hdwallet \
        tabulate \
    && apk del .build-deps

ADD rootfs /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 1234
