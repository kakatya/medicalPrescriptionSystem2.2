package medical.prescription.system22.controllers;

import medical.prescription.system22.models.PatientCode;
import medical.prescription.system22.models.Roles;
import medical.prescription.system22.models.User;
import medical.prescription.system22.repos.PatientCodeRepo;
import medical.prescription.system22.repos.UserRepo;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Controller
@PreAuthorize("hasAuthority('DOCTOR')")
public class DoctorToolsController {
    @Autowired
    UserRepo userRepo;
    @Autowired
    PatientCodeRepo patientCodeRepo;
    @GetMapping("/openDoctorTools")
    public String openDoctorToolsPage(
            @RequestParam(required = false, defaultValue = "")  String username,
                                      Model model){

        if (username != null && !username.isEmpty()) {
            User user = userRepo.findByUsername(username);
            if (user!=null && user.isPatient()) {
                List<User> users = new ArrayList<>();
                users.add( user);
                model.addAttribute("users",users);
                return "doctorTools";
            }

        }

        return "doctorTools";
    }

    @PostMapping("/registrationPatient")
    public String addNewPatient(User user, Model model){
        User userFromDB = userRepo.findByUsername(user.getUsername());
        if(userFromDB != null ){return "doctorTools";}
        user.setRoles(Collections.singleton(Roles.PATIENT));
        user.setActive(true);
        userRepo.save(user);
        return "redirect:/openDoctorTools";
    }

}
