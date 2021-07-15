package medical.prescription.system22.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {


    @GetMapping("/")
    public String open_main_page (Model model){
        return "mainPage";
    }
    @GetMapping("/adminTools")
    public String openAdminTool (){
        return "adminTools";
    }
}
