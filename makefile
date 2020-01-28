.DEFAULT_GOAL := help

help:  ## Exibe essa ajuda
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Redirec2

run: ## iniciar o container redirec2
	docker run --name redirec2-srv -d \
		--restart=unless-stopped \
		-e LETSENCRYPT_HOST=upload.jeudi.dev \
		-e VIRTUAL_HOST=upload.jeudi.dev \
		-e VIRTUAL_PORT=3000 \
	redirec2

build: ## gera imagem redirec2
	docker build -t redirec2:latest -t redirec2 .

_rm: ## Remove o container redirec2
	docker stop redirec2-srv
	docker rm redirec2-srv