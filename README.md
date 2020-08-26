# otel-demo

OpenTelemetry auto-instrumentation demo. It features a microservices-based travel app and Jaeger running inside a Docker Compose environment.

Blog post: [Auto-instrumentation with OpenTelemetry](https://medium.com/wwblog/auto-instrumentation-with-opentelemetry-3b096fdd068f)

## Windows setup

Do the following from an elevated command shell:

1. Install the [Chocolatey](https://chocolatey.org/) package manager.
2. Install OpenJDK: `choco install openjdk`.
3. Install `make`: `choco install make`.
4. Install Docker Desktop for Windows: `choco install docker-desktop`. In the settings, under the Resources section, give Docker 8 GB of memory since you're going to be running several containers.
4. **Optional:** if you want to play around with the app itself, install Visual Studio Code: `choco install vscode`. Include Java support, and install the Lombok extension as well.

## Build

From the top of the project directory, build the app and the Docker images using a single command:

```
$ make
```

## Run

To start up all the containers, it's just:

```
$ docker-compose up
```

## Endpoints

- Sample app:
  - UI: http://localhost:8080
  - API: http://localhost:8081
  - Provider 1:
    - API: http://localhost:8082
    - DB: mysql://localhost:3306
  - Provider 2:
    - API: http://localhost:8083
    - DB: mysql://localhost:3307
- Jaeger UI: http://localhost:16686

To try it out, just hit the sample app UI a few times, and then look at the traces in Jaeger.
