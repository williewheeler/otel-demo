package com.williewheeler.demos.otel.ui.model;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
public class Flight {
    private String origin;
    private String destination;
    private String airline;
    private Date departing;
    private Date returning;
    private int numAdults;
    private int numChildren;
    private int numInfants;
    private String flightClass;
}
