start:
	@ sudo docker-compose -f docker/docker-compose.yml up -d

stop:
	@docker-compose -f docker/docker-compose.yml stop

status:
	@docker-compose -f docker/docker-compose.yml ps

clear:
	@docker container prune; docker image prune; docker volume prune

restart: stop clear start

add-host:
	@chmod 755 docker/add_hosts_config.sh && docker/add_hosts_config.sh

run:  add-host start
	@yarn install && yarn start

