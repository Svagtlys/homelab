#!/bin/bash

(cd homeAutomation/;    docker compose pull --ignore-pull-failures; docker compose up -d)
(cd knowledgeBase/;     docker compose pull --ignore-pull-failures; docker compose up -d)
(cd mediaManagement/;   docker compose pull --ignore-pull-failures; docker compose up -d)
(cd networkManagement/; docker compose pull --ignore-pull-failures; docker compose up -d)
(cd nightscout/;        docker compose pull --ignore-pull-failures; docker compose up -d)
