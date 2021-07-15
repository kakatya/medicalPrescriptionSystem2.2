package medical.prescription.system22.controllers;

import medical.prescription.system22.models.Roles;
import medical.prescription.system22.models.User;
import medical.prescription.system22.repos.User_repo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Controller
public class Registration_controller {
    private final User_repo userRepo;

    public Registration_controller(User_repo userRepo) {
        this.userRepo = userRepo;
    }

    @GetMapping("/openRegistrationAdminPage")
    public String openRegistrationAdminPage (){
        return "registrationAdminPage";
    }
   @PostMapping("/openRegistrationAdminPage")
    public String addNewAdmin(User user, Map<String, Object> model){
        User userFromDB = userRepo.findByName(user.getName());
        if(userFromDB != null){return "registrationAdminPage";}
        user.setRoles(Collections.singleton(Roles.ADMIN));
        user.setActive(true);
        userRepo.save(user);
        return "redirect:/openLoginAdminPage";
    }
}
