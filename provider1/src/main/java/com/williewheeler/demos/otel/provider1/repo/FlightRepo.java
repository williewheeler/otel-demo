package com.williewheeler.demos.otel.provider1.repo;

import com.williewheeler.demos.otel.provider1.entity.Flight;
import org.springframework.data.repository.CrudRepository;

public interface FlightRepo extends CrudRepository<Flight, Long> {
}
