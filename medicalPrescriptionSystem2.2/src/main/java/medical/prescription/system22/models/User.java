package medical.prescription.system22.models;

import javax.persistence.*;
import java.util.Set;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer user_id;
    private String name;
    private String password;
    private Boolean active;
    @ElementCollection(targetClass = Roles.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING)
    private Set<Roles> roles;

    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public User(){

    }


    public boolean is_admin(){
        return roles.contains(Roles.ADMIN);
    }

    public boolean is_doctor(){
        return roles.contains(Roles.DOCTOR);
    }

    public boolean is_patient(){
        return roles.contains(Roles.PATIENT);
    }

    public boolean is_pharmacist(){
        return roles.contains(Roles.PHARMACIST);
    }


    public Set<Roles> getRoles() {
        return roles;
    }

    public void setRoles(Set<Roles> roles) {
        this.roles = roles;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }
}
