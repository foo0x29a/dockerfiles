FROM golang:1.13-alpine

LABEL image='foo0x29a/golang'
LABEL tag='1.13.1'
LABEL ref='https://github.com/foo0x29a/dockerfiles'

ENV user='foo0x29a'
ENV uid='1001'
ENV gid='1001'
ENV CGO_ENABLED=0

RUN addgroup --gid "${gid}" "${user}" \
    && adduser "$user"\
    --disabled-password \
    --gecos "" \
    --ingroup "$user" \
    --uid "$uid"

RUN mkdir -p /.cache \
    chmod 777 /.cache

USER "${user}"
WORKDIR "/home/${user}"
