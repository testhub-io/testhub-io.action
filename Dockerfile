# Container image that runs your code
FROM debian:buster-slim

RUN apt-get update 
RUN apt-get install curl -y

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
#RUN curl https://github.com/testhub-io/testhub-cli/releases/download/v0.1/testhub-cli --output /testhub-cli -L
#RUN chmod +x /testhub-cli


# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
