FROM cirrusci/flutter:2.2.3

RUN apt-get update -yq && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install wget curl && \
    rm -rf /var/lib/apt/lists/*
ADD https://coding-public-generic.pkg.coding.net/cci/release/cci-agent/linux/amd64/cci-agent .
RUN chmod a+x ./cci-agent