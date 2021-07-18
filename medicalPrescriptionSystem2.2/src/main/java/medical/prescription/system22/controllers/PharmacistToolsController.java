package medical.prescription.system22.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;

@Controller
@PreAuthorize("hasAuthority('Pharmacist')")
public class PharmacistToolsController {
}
