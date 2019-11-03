package pl.odyssey.universe.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "api/v1/galaxy")
public class GalaxyController {

    @GetMapping(value = "/test")
    ResponseEntity<String> test() {
        return ResponseEntity.ok("Hello test");
    }
}
