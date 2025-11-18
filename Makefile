runb:
	@mkdir -p /home/rmouhcin/data/wordpress
	@mkdir -p /home/rmouhcin/data/mariadb
	@echo "docker compose up with detached mod"
	@docker compose -f srcs/docker-compose.yml up --build -d
run:
	@mkdir -p /home/rmouhcin/data
	@docker compose -f srcs/docker-compose.yml up
down:
	@docker compose -f srcs/docker-compose.yml down -v
cstop:
	@docker stop $$(docker ps -qa)
crm:
	@docker rm $$(docker ps -qa)

cache:
	@docker builder prune -f --all
