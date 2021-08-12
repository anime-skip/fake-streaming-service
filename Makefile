build:
	@docker build -t anime-skip/fake-streaming-service/web:latest .

run: build
	@docker run -e NGINX_ENTRYPOINT_QUIET_LOGS=1 -p 3000:80 anime-skip/fake-streaming-service/web:latest
