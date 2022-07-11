FROM almalinux:8.6

RUN dnf install -y \
    procps-ng \
    nmap-ncat \
 && dnf clean all \
 && rm -rf /var/cache/dnf /var/cache/yum

COPY wrapper.sh health_checks.sh /

CMD [ "bash", "wrapper.sh", "--health" ]
