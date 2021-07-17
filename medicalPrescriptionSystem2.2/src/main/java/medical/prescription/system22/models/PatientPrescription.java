package medical.prescription.system22.models;

import javax.persistence.*;

@Entity
public class PatientPrescription {
@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "code_id")
    private PatientCode patientCode;

    public PatientPrescription(PatientCode patientCode) {
        this.patientCode = patientCode;
    }

    public PatientPrescription() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public PatientCode getPatientCode() {
        return patientCode;
    }

    public void setPatientCode(PatientCode patientCode) {
        this.patientCode = patientCode;
    }
}
