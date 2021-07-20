package medical.prescription.system22.repos;

import medical.prescription.system22.models.PatientCode;
import medical.prescription.system22.models.PatientPrescription;
import medical.prescription.system22.models.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PrescriptionRepo extends CrudRepository<PatientPrescription,Integer> {
    List<PatientPrescription> findByPatientCode(PatientCode patientCode);
    List<PatientPrescription> findByPatient(User user);
}
