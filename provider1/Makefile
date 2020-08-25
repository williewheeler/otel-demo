.PHONE: all clean package docker

APP_NAME = "otel-provider1"

YELLOW = \033[1;33m
NC = \033[0m

all: clean package docker

cleandb:
	@echo "$(YELLOW)=====[ CLEANING DATABASES: $(APP_NAME) ]=====$(NC)"
	rm -rf ./dbdata

clean:
	@echo "$(YELLOW)=====[ CLEANING MAVEN PACKAGE: $(APP_NAME) ]=====$(NC)"
	rm -rf tmp
	mvn -e clean

package:
	@echo "$(YELLOW)=====[ BUILDING MAVEN PACKAGE: $(APP_NAME) ]=====$(NC)"
	mvn -e package spring-boot:repackage -DskipTests

docker:
	@echo "$(YELLOW)=====[ BUILDING DOCKER IMAGE: $(APP_NAME) ]=====$(NC)"
	mkdir -p tmp
	cp ../agents/opentelemetry-javaagent-all.jar tmp
	docker build -t $(APP_NAME) .
