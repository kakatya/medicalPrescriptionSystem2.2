package medical.prescription.system22.models;

import javax.persistence.*;
import javax.xml.crypto.Data;
import java.util.Date;

@Entity
public class PatientPrescription {
@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "code_id")
    private PatientCode patientCode;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User patient;
    private String startDate;
    private String endDAte;
    private String birthday;
    private String placeOfBirth;
    private String doctorName;
    private String drugName;

    public PatientPrescription(PatientCode patientCode,
                               User patient,
                               String startDate,
                               String endDAte,
                               String birthday,
                               String placeOfBirth,
                               String doctorName,
                               String drugName) {
        this.patientCode = patientCode;
        this.patient = patient;
        this.startDate = startDate;
        this.endDAte = endDAte;
        this.birthday = birthday;
        this.placeOfBirth = placeOfBirth;
        this.doctorName = doctorName;
        this.drugName = drugName;
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

    public User getPatient() {
        return patient;
    }

    public void setPatient(User patient) {
        this.patient = patient;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDAte() {
        return endDAte;
    }

    public void setEndDAte(String endDAte) {
        this.endDAte = endDAte;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPlaceOfBirth() {
        return placeOfBirth;
    }

    public void setPlaceOfBirth(String placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }
}
