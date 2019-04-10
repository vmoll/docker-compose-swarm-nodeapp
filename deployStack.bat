@echo off
cls
@echo "inicializa o cluster swarm"

docker swarm init

docker stack deploy --compose-file docker-compose.yml

docker stack services

@echo "node rodando localhost:3000"
pause;