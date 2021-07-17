package medical.prescription.system22.models;

import javax.persistence.*;

@Entity
public class PatientCode {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;
    private String code;

    public PatientCode(User user, String code) {
        this.user = user;
        this.code = code;
    }

    public PatientCode() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
