runb:
	@echo "docker compose up with detached mod"
	@docker compose up --build -d
run:
	@docker compose up
down:
	@docker compose down -v
# cstop:
# 	@docker stop $$(docker ps -qa)
# crm:
# 	@docker rm $$(docker ps -qa)

cache:
	@docker builder prune --all