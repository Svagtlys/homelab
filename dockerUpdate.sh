#!/bin/bash

# Custom builds
(cd knowledgeBase/;     docker build -t tandoor:latest - < tandoorDockerfile)
docker build -t qmcgaw/ddns-updater https://github.com/qdm12/ddns-updater.git --build-arg UID=1006 --build-arg GID=1006
(cd mediaManagement/hyperion-ng/; docker build -t hyperion-ng .)

# Normal updates and restart

(cd homeAutomation/;    docker compose pull --ignore-pull-failures; docker compose up -d)
(cd knowledgeBase/;     docker compose pull --ignore-pull-failures; docker compose up -d)
(cd mediaManagement/;   docker compose pull --ignore-pull-failures; docker compose up -d)
(cd networkManagement/; docker compose pull --ignore-pull-failures; docker compose up -d)
(cd nightscout/;        docker compose pull --ignore-pull-failures; docker compose up -d)

# Restart these containers so that they're running off of the latest gluetun container

(cd mediaManagement/;   docker compose restart qbittorrent prowlarr)
