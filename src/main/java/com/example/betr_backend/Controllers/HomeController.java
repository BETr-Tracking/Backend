package com.example.betr_backend.Controllers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;


@RestController
@Slf4j
public class HomeController {

    @GetMapping("/")
    public String HomePage(){
        LocalDateTime localdatetime = LocalDateTime.now();
        log.info("Welcome Home Page" + localdatetime);
        return "Welcome to Home Page";
    }

    @GetMapping("/logs")
    public String LogsPage(){
        LocalDateTime localdatetime = LocalDateTime.now();
        log.info("This logs page" + localdatetime);
        return "Welcome to Logs Page";
    }

}
