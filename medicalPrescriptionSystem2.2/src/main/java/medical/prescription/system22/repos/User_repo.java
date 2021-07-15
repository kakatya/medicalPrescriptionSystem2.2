package medical.prescription.system22.repos;

import medical.prescription.system22.models.User;
import org.springframework.data.repository.CrudRepository;

public interface User_repo extends CrudRepository<User,Long> {
    User findByName(String name);
}
