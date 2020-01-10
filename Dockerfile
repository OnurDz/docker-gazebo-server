FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    curl \
    gnupg2 \
 && rm -rf /var/lib/apt/lists/* \
 && curl -sSL http://get.gazebosim.org | sh

CMD ["gzserver", "--verbose"]