package medical.prescription.system22.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@PreAuthorize("hasAuthority('DOCTOR')")
public class DoctorToolsController {
    @GetMapping("/openDoctorTools")
    public String openDoctorToolsPage(){
        return "doctorTools";
    }
}
