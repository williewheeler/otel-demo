package com.williewheeler.demos.otel.api;

import lombok.val;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
public class FlightController {

    @GetMapping("/flights")
    public List<Flight> getFlights() {
        val flights = new ArrayList<Flight>();
        flights.add(flight("Delta", new Date(), new Date()));
        flights.add(flight("Delta", new Date(), new Date()));
        flights.add(flight("Alaska", new Date(), new Date()));
        flights.add(flight("United", new Date(), new Date()));
        flights.add(flight("Southwest", new Date(), new Date()));
        return flights;
    }

    private Flight flight(String airline, Date departing, Date returning) {
        return new Flight()
                .setOrigin("SEA")
                .setDestination("LAS")
                .setAirline(airline)
                .setDeparting(departing)
                .setReturning(returning)
                .setNumAdults(2)
                .setNumChildren(0)
                .setNumInfants(0)
                .setFlightClass("Basic Economy");
    }
}
