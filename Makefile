build:
	@docker build -t animeskip/fake-streaming-service:latest .

run: build
	@docker run -e NGINX_ENTRYPOINT_QUIET_LOGS=1 -p 3000:80 animeskip/fake-streaming-service:latest
