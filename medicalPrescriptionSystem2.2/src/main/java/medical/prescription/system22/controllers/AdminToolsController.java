package medical.prescription.system22.controllers;

import medical.prescription.system22.models.Roles;
import medical.prescription.system22.models.User;
import medical.prescription.system22.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.*;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminToolsController {
    @Autowired
    UserRepo userRepo;
    @GetMapping("/adminTools")
    public String openAdminTool (Map<String,String> model){
        model.put("navs",navAdmin());
        return "adminTools";
    }
    @PostMapping("/registrationDoctor")
    public String addNewDoctor(User user, Map<String, Object> model){
        User userFromDB = userRepo.findByUsername(user.getUsername());
        if(userFromDB != null){return "adminTools";}
        user.setRoles(Collections.singleton(Roles.DOCTOR));
        user.setActive(true);
        userRepo.save(user);
        return "redirect:/adminTools";
    }
    public String navAdmin(){
        List<String> navs = new ArrayList<>();
        return "/openAdminTools";
    }
    @PostMapping("/registrationPharmacist")
    public String addNewPharmacist(User user, Map<String, Object> model){
        User userFromDB = userRepo.findByUsername(user.getUsername());
        if(userFromDB != null){return "adminTools";}
        user.setRoles(Collections.singleton(Roles.PHARMACIST));
        user.setActive(true);
        userRepo.save(user);
        return "redirect:/adminTools";
    }
}
