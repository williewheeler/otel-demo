package com.williewheeler.demos.otel.api.service;

import com.williewheeler.demos.otel.api.model.Flight;
import lombok.val;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class FlightServiceImpl implements FlightService {

    @Override
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
