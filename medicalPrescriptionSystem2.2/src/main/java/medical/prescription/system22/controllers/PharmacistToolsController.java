package medical.prescription.system22.controllers;

import medical.prescription.system22.models.PatientCode;
import medical.prescription.system22.models.PatientPrescription;
import medical.prescription.system22.repos.PatientCodeRepo;
import medical.prescription.system22.repos.PrescriptionRepo;
import medical.prescription.system22.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@PreAuthorize("hasAuthority('PHARMACIST')")
public class PharmacistToolsController {
    @Autowired
    PrescriptionRepo prescriptionRepo;
    @Autowired
    PatientCodeRepo patientCodeRepo;
    @GetMapping("/openPharmacistTools")
    public String openPharmacistTools(@RequestParam(required = false, defaultValue = "") String code, Model model){
        if (code!=null){
            PatientCode codebd = patientCodeRepo.findByCode(code);
            if (codebd==null)
                return "pharmacistTools";
        }
        List<PatientPrescription> patientPrescriptions = prescriptionRepo.findByPatientCode(patientCodeRepo.findByCode(code));
        model.addAttribute("prescriptions",patientPrescriptions);
        return "pharmacistTools";
    }
}
