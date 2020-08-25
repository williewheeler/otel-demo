package com.williewheeler.demos.otel.ui.model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import org.springframework.hateoas.RepresentationModel;

public class Flight extends RepresentationModel<Flight> {

    @Getter
    private final String content;

    @JsonCreator
    public Flight(@JsonProperty("content") String content) {
        this.content = content;
    }
}
