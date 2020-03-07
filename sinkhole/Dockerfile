FROM foo0x29a/curl as get_hosts

RUN curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts --output /adblock.hosts

FROM coredns/coredns:1.6.7

COPY --from=get_hosts /adblock.hosts /
COPY Corefile /
