package cz.czechitas.java2webapps.lekce7.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author Filip Jirsák
 */
@Controller
public class CalendarController {
  @GetMapping("/")
  public String index() {
    return "index";
  }
}
