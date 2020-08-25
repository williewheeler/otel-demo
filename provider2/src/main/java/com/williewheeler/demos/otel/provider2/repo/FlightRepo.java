package com.williewheeler.demos.otel.provider2.repo;

import com.williewheeler.demos.otel.provider2.entity.Flight;
import org.springframework.data.repository.CrudRepository;

public interface FlightRepo extends CrudRepository<Flight, Long> {
}
