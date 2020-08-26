# otel-demo

OpenTelemetry auto-instrumentation demo.

## Windows setup

1. Install [Java](https://jdk.java.net/14/), since the demo app is a Java app. I am using OpenJDK 14. Unfortunately Oracle makes you install it from a zip file, but that's fine. Just be sure to set the `JAVA_HOME` environment variable after you unzip it. For example, I am using `JAVA_HOME=C:\jdk\jdk-14.0.2`.
2. You'll need `make` to build the app. I used the [Chocolately](https://chocolatey.org/) package manager to install `make`.
3. Install [Docker Desktop for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows/plans/docker-ce-desktop-windows-tier?tab=instructions). In the settings, under the Resources section, give Docker 8 GB of memory since you're going to be running several containers.
4. **Optional:** if you want to play around with the app itself, install [Visual Studio Code](https://code.visualstudio.com/), including Java support. Install the Lombok extension as well.

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
