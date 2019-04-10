docker stack deploy --compose-file docker-compose.yml
pause;

docker stack deploy	    ###Deploy a new stack or update an existing stack
docker stack ls	        ###List stacks
docker stack ps	        ###List the tasks in the stack
docker stack rm	        ###Remove one or more stacks
docker stack services	###List the services in the stack