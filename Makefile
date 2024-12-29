.PHONY: start stop

start:
	docker-compose up -d

stop:
	docker-compose down

build:
	docker build -t registry.heroku.com/evening-forest-00176/web .

push:
	docker push registry.heroku.com/evening-forest-00176/web

release: 
	heroku container:release web -a evening-forest-00176