FROM ubuntu:latest
RUN apt update && apt install -y curl && curl -sSf https://sshx.io/get | sh -s run
