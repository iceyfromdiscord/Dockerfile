FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl && curl -sSf https://sshx.io/get | sh -s run
