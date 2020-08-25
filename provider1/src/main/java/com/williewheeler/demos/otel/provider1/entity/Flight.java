package com.williewheeler.demos.otel.provider1.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
public class Flight {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String origin;
    private String destination;
    private String airline;
    private Date departing;
    private Date returning;

    @Column(name = "class")
    private String flightClass;

    private int price;
}
