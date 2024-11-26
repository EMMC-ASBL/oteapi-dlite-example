# source this file for simplicity

docker compose -f docker-compose.yml pull
docker compose -f docker-compose.yml build
docker compose -f docker-compose.yml up -d

# Practical commands:

# docker ps  # To see the running containers

# To get a bash inside the docker image:
# docker exec -it name-of-container /bin/bash

# To stop the service:
# docker compose -f docker-compose.yml down
