package com.williewheeler.demos.otel.ui.web;

import lombok.val;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.CollectionModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class StorefrontController {

    @Autowired
    private RestTemplate restTemplate;

    @GetMapping("/")
    public String storefront(Model model) {
        // FIXME Hardcoded URI
        val flights = restTemplate.getForObject("http://otel-api:8080/flights", CollectionModel.class);
        model.addAttribute("flights", flights.getContent());
        return "index";
    }
}
