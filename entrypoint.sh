#!/bin/sh -l

main () {
    local REPOSITORY=$1
    local PAGES_ACCESS_TOKEN=$2

    curl \
        -X POST \
            -H "Authorization: token ${PAGES_ACCESS_TOKEN}" \
            -H "Accept: application/vnd.github.ant-man-preview+json" \
        "https://api.github.com/repos/${REPOSITORY}/pages/builds"
}

main "$@"
