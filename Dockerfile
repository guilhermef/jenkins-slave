FROM jenkins/jnlp-slave:3.15-1

USER root

ENV DOCKER_VERSION=17.05.0-ce

RUN apt-get update && \
    apt-get install --no-install-recommends -y virtualenv sudo make iptables aufs-tools && \
    rm -rf /var/lib/apt/lists/*

RUN curl https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz | tar zx && \
    mv docker/* /bin/ && chmod +x /bin/docker*

COPY docker-lib.sh .

USER root
