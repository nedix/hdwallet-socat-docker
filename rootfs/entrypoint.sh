#!/usr/bin/env bash

set -ex

generate_response() {
    http_header=""

    while read -r line; do
        http_header+="$line"

        if [[ $line == $'\r' ]]; then
            break
        fi
    done

    uri=$(echo "$http_header" | sed -n 's/GET \(.*\) HTTP.*/\1/p')
    path=${uri%%\?*}
    query_string=${uri##*\?}

    case $path in
        /docs)
            echo -e "HTTP/1.1 200 OK\nContent-Type: text/html\n\n$(cat /var/www/html/index.html)\n"
            exit 0
            ;;
        /docs/swagger.json)
            echo -e "HTTP/1.1 200 OK\nContent-Type: text/plain\n\n$(cat /var/www/html/docs/swagger.json)\n"
            exit 0
            ;;
        /generate)
            command="hdwallet generate"
            ;;
        /generate-addresses)
            command="hdwallet generate addresses"
            ;;
        *)
            echo -e "HTTP/1.1 404 Not Found\n\n"
            exit 1
            ;;
    esac

    for pair in ${query_string//&/ }; do
        key=$(echo "$pair" | cut -d '=' -f 1)
        value=$(echo "$pair" | cut -d '=' -f 2)

        if [[ -z "$value" ]]; then
            options+=" --${key}"
        else
            options+=" --${key}=${value}"
        fi
    done

    echo -e "HTTP/1.1 200 OK\nContent-Type: text/plain\n\n$(bash -c "${command}${options} 2>&1")\n"

    exit 0
}

export -f generate_response

socat -T 1 TCP-LISTEN:80,reuseaddr,fork SYSTEM:'bash -c generate_response'
