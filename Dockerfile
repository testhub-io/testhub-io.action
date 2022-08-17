# Container image that runs your code
FROM debian:buster-slim

RUN apt-get update 
RUN apt-get install curl tar -y

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh

RUN curl https://github.com/testhub-io/testhub/releases/download/v0.15.1/testhub-v0.15.1-linux-386.tar.gz --output /testhub-cli.tar.gz -L \
    && tar -xzf /testhub-cli.tar.gz \       
    && chmod +x /testhub

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
