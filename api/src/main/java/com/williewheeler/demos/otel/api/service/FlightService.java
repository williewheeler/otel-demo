package com.williewheeler.demos.otel.api.service;

import com.williewheeler.demos.otel.api.model.Flight;

import java.util.List;

public interface FlightService {

    List<Flight> getFlights();
}
