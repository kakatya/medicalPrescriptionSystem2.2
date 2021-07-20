package medical.prescription.system22.controllers;

import medical.prescription.system22.models.PatientCode;
import medical.prescription.system22.models.PatientPrescription;
import medical.prescription.system22.models.User;
import medical.prescription.system22.repos.PatientCodeRepo;
import medical.prescription.system22.repos.PrescriptionRepo;
import medical.prescription.system22.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@PreAuthorize("hasAuthority('DOCTOR')")
public class PatientManagement {
    @Autowired
    PatientCodeRepo patientCodeRepo;

    @Autowired
    UserRepo userRepo;
    @Autowired
    PrescriptionRepo prescriptionRepo;

    @GetMapping("/patienntManeg/{user}")
    public String usmaneg(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        PatientCode patientCodeFromDB = patientCodeRepo.findByUser(user);
        if (patientCodeFromDB != null)
            model.addAttribute("patientCode", patientCodeFromDB);
        List<PatientPrescription>  patientPrescriptions;
        patientPrescriptions = prescriptionRepo.findByPatient(user);
        model.addAttribute("patientPrescriptions",patientPrescriptions);
        return "patientManagement";
    }

    @PostMapping("/patienntManeg/{user}/add")
    public String addCode(@RequestParam(required = false, defaultValue = "") String username,
                          @RequestParam(required = false, defaultValue = "") String code,
                          Model model) {
        PatientCode patientCodeFromDB = patientCodeRepo.findByCode(code);
        if (patientCodeFromDB != null) {
            model.addAttribute("message", "код уже существует");
            return "doctorTools";
        }
        PatientCode patientCode = new PatientCode();
        patientCode.setCode(code);
        patientCode.setUser(userRepo.findByUsername(username));
        System.out.println(patientCode.getCode());
        patientCodeRepo.save(patientCode);
        return "doctorTools";
    }

    @PostMapping("/patienntManeg/{user}/addPrst")
    public String addPrescip(@RequestParam(required = false, defaultValue = "") String username,
                             @RequestParam(required = false, defaultValue = "") String code,
                             @RequestParam(required = false, defaultValue = "") String birthday,
                             @RequestParam(required = false, defaultValue = "") String placeOfBirth,
                             @RequestParam(required = false, defaultValue = "") String drug,
                             @RequestParam(required = false, defaultValue = "") String dateStart,
                             @RequestParam(required = false, defaultValue = "") String dateEnd,
                             @RequestParam(required = false, defaultValue = "") String doctor,
                             Model model
    ) {
        PatientPrescription patientPrescription = new PatientPrescription();
        patientPrescription.setPatient(userRepo.findByUsername(username));
        patientPrescription.setPatientCode(patientCodeRepo.findByCode(code));
        patientPrescription.setBirthday(birthday);
        patientPrescription.setPlaceOfBirth(placeOfBirth);
        patientPrescription.setDrugName(drug);
        patientPrescription.setStartDate(dateStart);
        patientPrescription.setEndDAte(dateEnd);
        patientPrescription.setDoctorName(doctor);
        prescriptionRepo.save(patientPrescription);

        return "doctorTools";
    }
}
