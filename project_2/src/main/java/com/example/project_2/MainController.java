package com.example.project_2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("name", "Максим");
        model.addAttribute("isAdmin", true);
        model.addAttribute("items", List.of("Java", "Spring", "JTE"));
        model.addAttribute("info", Map.of(
                "email", "max@gmail.com",
                "role", "admin"
        ));

        return "index";
    }
}
