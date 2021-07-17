package medical.prescription.system22.controllers;

import medical.prescription.system22.models.Roles;
import medical.prescription.system22.models.User;
import medical.prescription.system22.repos.UserRepo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {
    private final UserRepo userRepo;

    public RegistrationController(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    @GetMapping("/openRegistrationAdminPage")
    public String openRegistrationAdminPage (){
        return "registrationAdminPage";
    }
   @PostMapping("/registrationAdmin")
    public String addNewAdmin(User user, Map<String, Object> model){
        User userFromDB = userRepo.findByUsername(user.getUsername());

        if(userFromDB != null){return "registrationAdminPage";}
        user.setRoles(Collections.singleton(Roles.ADMIN));
        user.setActive(true);
        userRepo.save(user);
        return "redirect:/login";
    }


}
