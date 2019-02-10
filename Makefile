NAME=oraclelinux-nodered-ocicli
AUTHOR=damarinz
VERSION=0.1
PORT=1880

build-image:
	docker build -t $(AUTHOR)/$(NAME):$(VERSION) .

restart: stop start

create-container:
	docker run -itd \
		--restart=always \
		-p $(PORT):$(PORT) \
		--name $(NAME) \
		$(AUTHOR)/$(NAME):$(VERSION)

container=`docker container ls -a |grep $(NAME)|awk '{print $$1}'`


start:
	docker container start $(container)

stop:
	docker container stop $(container)



attach:
	docker exec -it $(NAME) /bin/bash

logs:
	docker logs $(NAME)