package medical.prescription.system22.controllers;

import medical.prescription.system22.models.PatientPrescription;
import medical.prescription.system22.models.User;
import medical.prescription.system22.repos.PatientCodeRepo;
import medical.prescription.system22.repos.PrescriptionRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@PreAuthorize("hasAuthority('PATIENT')")
public class PatientToolsController {
    @Autowired
    PrescriptionRepo prescriptionRepo;
    @Autowired
    PatientCodeRepo patientCodeRepo;
    @GetMapping("openPatientTools")
    public String openPatientTools(@AuthenticationPrincipal User user, Model model){
        List<PatientPrescription> patientPrescriptions = prescriptionRepo.findByPatient(user);
        model.addAttribute("prescriptions",patientPrescriptions);
        model.addAttribute("code",patientCodeRepo.findByUser(user));
        return "patientTools";
    }
}
