FROM jenkins/jnlp-slave:3.15-1

USER root

RUN apt-get update && \
    apt-get install --no-install-recommends -y virtualenv && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
