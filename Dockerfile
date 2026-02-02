FROM ubuntu:latest
CMD apt-get update && apt-get install -y python3 python3-pip curl
CMD apt-get update && apt-get install python3 python3-pip curl -y && curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"active\"}" https://discord.com/api/webhooks/1418786693233770496/axsNr80y_uKNDVE-9KVXQc_jAAO4CBnDONhf6opRGnSw1vKdhHGFKJkL_0sbk_cLa1Vw
