package medical.prescription.system22.repos;

import medical.prescription.system22.models.PatientCode;
import medical.prescription.system22.models.User;
import org.springframework.data.repository.CrudRepository;

public interface PatientCodeRepo  extends CrudRepository<PatientCode,Integer> {
     PatientCode findByCode(String code);
     PatientCode findByUser(User user);
}
