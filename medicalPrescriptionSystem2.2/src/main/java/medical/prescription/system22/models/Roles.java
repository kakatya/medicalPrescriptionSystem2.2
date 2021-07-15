package medical.prescription.system22.models;

import org.springframework.security.core.GrantedAuthority;

public enum Roles implements GrantedAuthority {
    ADMIN,
    DOCTOR,
    PATIENT,
    PHARMACIST;


    @Override
    public String getAuthority() {
        return name();
    }
}
