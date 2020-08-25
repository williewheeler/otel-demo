package com.williewheeler.demos.otel.api.web;

import com.williewheeler.demos.otel.api.model.Flight;
import com.williewheeler.demos.otel.api.service.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.CollectionModel;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FlightController {

    @Autowired
    private FlightService flightService;

    @GetMapping("/flights")
    public CollectionModel<Flight> getFlights() {
        return flightService.getFlights();
    }
}
