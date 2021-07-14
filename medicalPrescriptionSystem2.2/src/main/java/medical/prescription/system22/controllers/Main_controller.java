package medical.prescription.system22.controllers;

import medical.prescription.system22.repos.User_repo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Main_controller {
    @Autowired
    private User_repo userRepo;

    @GetMapping("/")
    public String open_main_page (Model model){
        return "main_page";
    }
    @GetMapping("/openLoginAdminPage")
    public String openLoginAdminPage(){
        return "loginAdmin";
    }

}
