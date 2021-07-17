package medical.prescription.system22.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class MainController {
    @GetMapping("/")
    public String main (Map<String, Object> model){
        return "main";
    }
}
