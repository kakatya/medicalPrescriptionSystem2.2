package medical.prescription.system22.controllers;

import medical.prescription.system22.models.Roles;
import medical.prescription.system22.models.User;
import medical.prescription.system22.repos.User_repo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;

@Controller
public class Registration_controller {
    @Autowired
    private User_repo userRepo;
    @GetMapping("/openRegistrationAdminPage")
    public String openRegistrationAdminPage (){
        return "registrationAdmin";
    }
    @PostMapping
    public String addNewAdmin(User user){
        User userFromDB = userRepo.findByEmailAndName(user.getEmail(),user.getName());
        if(userFromDB != null)
            return "registrationAdmin";
        user.getRoles().add(Roles.ADMIN);
        userRepo.save(user);
        return "redirect:/loginAdmin";
    }
}
