# otel-demo

OpenTelemetry auto-instrumentation demo.

## Build

```
$ make
```

## Run

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
