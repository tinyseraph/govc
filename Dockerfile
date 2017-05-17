FROM debian

RUN apt-get update && \
    curl -L https://github.com/vmware/govmomi/releases/download/v0.14.0/govc_linux_amd64.gz | gunzip > /usr/local/bin/govc && \
    chmod +x /usr/local/bin/govc && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
