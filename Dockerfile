# Container image that runs your code
FROM debian:buster-slim

RUN apt-get update 
RUN apt-get install curl tar -y

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh

RUN curl https://github.com/testhub-io/testhub-cli/releases/download/v0.7/testhub-cli_v0.7_linux_arm64.tar.gz --output testhub-cli.tar.gz -L \
    && tar -xzf testhub-cli.tar.gz \    
    && cp ./testhub-cli usr/bin/testhub-cli \
    && chmod +x usr/bin/testhub-cli

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
