$(info Using OS    : $(OS))
$(info Using shell : $(SHELL))

APP_NAME := otel-provider1
DOCKER := docker

# Yeah, it's hacky to handle cross-platform using if/else. :D
ifeq ($(OS), Windows_NT)
	MVN := .\mvnw.cmd
else
	MVN := ./mvnw
endif

.PHONY: all clean package docker

all: clean package docker

cleandb:
	$(info =====[ CLEANING DATABASES: $(APP_NAME) ]=====)
ifeq ($(OS), Windows_NT)
	if exist .\dbdata rmdir /Q /S .\dbdata
else
	rm -rf ./dbdata
endif

clean:
	$(info =====[ CLEANING MAVEN PACKAGE: $(APP_NAME) ]=====)
ifeq ($(OS), Windows_NT)
	if exist .\tmp rmdir /Q /S .\tmp
else
	rm -rf ./tmp
endif
	$(MVN) -e clean

package:
	$(info =====[ BUILDING MAVEN PACKAGE: $(APP_NAME) ]=====)
	$(MVN) -e package spring-boot:repackage -DskipTests

docker:
	$(info =====[ BUILDING DOCKER PACKAGE: $(APP_NAME) ]=====)
ifeq ($(OS), Windows_NT)
	if not exist .\tmp mkdir .\tmp
	copy ..\agents\opentelemetry-javaagent-all.jar .\tmp
else
	mkdir -p ./tmp
	cp ../agents/opentelemetry-javaagent-all.jar ./tmp
endif
	$(DOCKER) build -t $(APP_NAME) .
