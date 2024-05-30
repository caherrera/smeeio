#!/bin/sh

if [ "${1#-*}" != "$1" ]; then
    smee "$@"
else

    WEBHOOK_TARGET="${1:-${WEBHOOK_TARGET}}"
    WEBHOOK_PROXY_URL="${2:-${WEBHOOK_PROXY_URL}}"



    if [ -z "$WEBHOOK_TARGET" ]; then
    echo "Please provide a target URL as the first argument or set the WEBHOOK_TARGET environment variable"
    exit 1
    fi

    if ! [[ $WEBHOOK_TARGET =~ ^https?:// ]]; then
        echo "WEBHOOK_TARGET must be a valid URL"
        exit 1
    fi

    smee --target "${WEBHOOK_TARGET:-$1}" --url "$WEBHOOK_PROXY_URL"
fi