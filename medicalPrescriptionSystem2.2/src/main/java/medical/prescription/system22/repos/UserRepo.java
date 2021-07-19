package medical.prescription.system22.repos;

import medical.prescription.system22.models.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepo extends CrudRepository<User,Integer> {
    User findByUsername(String username);

}
