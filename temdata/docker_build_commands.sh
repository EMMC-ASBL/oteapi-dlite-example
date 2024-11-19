# source this file for simplicity

docker compose -f docker-compose.yml pull
docker compose -f docker-compose.yml build
docker compose -f docker-compose.yml up -d

# Practical commands:

# To get a bash inside the docker image:
# docker exec -it oteapi-test-oteapi-1 /bin/bash

# To stop the service:
# docker compose -f docker-compose_oteapi6.yml down
