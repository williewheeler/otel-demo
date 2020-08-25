package com.williewheeler.demos.otel.api.service;

import com.williewheeler.demos.otel.api.model.Flight;
import org.springframework.hateoas.CollectionModel;

public interface FlightService {

    CollectionModel<Flight> getFlights();
}
