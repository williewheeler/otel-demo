package com.williewheeler.demos.otel.api.service;

import com.williewheeler.demos.otel.api.model.Flight;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.CollectionModel;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.concurrent.CompletableFuture;

@Component
@Slf4j
public class FlightClient {

    @Autowired
    private RestTemplate restTemplate;

    public CollectionModel<Flight> getProvider1Flights() {
        log.debug("Getting provider 1 flights");
        // FIXME Hardcoded URI
        return restTemplate.getForObject("http://otel-provider1:8080/flights", CollectionModel.class);
    }

    public CollectionModel<Flight> getProvider2Flights() {
        log.debug("Getting provider 2 flights");
        // FIXME Hardcoded URI
        return restTemplate.getForObject("http://otel-provider2:8080/flights", CollectionModel.class);
    }

    @Async
    public CompletableFuture<CollectionModel<Flight>> getProvider1FlightsAsync() {
        return CompletableFuture.completedFuture(getProvider1Flights());
    }

    @Async
    public CompletableFuture<CollectionModel<Flight>> getProvider2FlightsAsync() {
        return CompletableFuture.completedFuture(getProvider2Flights());
    }
}
