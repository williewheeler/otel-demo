$(info Using OS    : $(OS))
$(info Using shell : $(SHELL))

APP_NAME := otel-provider1
YELLOW := \033[1;33m
NC := \033[0m

.PHONY: all clean package docker

all: clean package docker

cleandb:
	$(info =====[ CLEANING DATABASES: $(APP_NAME) ]=====)
	$(info Removing dbdata)
ifeq ($(OS), Windows_NT)
	if exist .\dbdata rmdir /Q /S .\dbdata
else
	rm -rf ./dbdata
endif

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
