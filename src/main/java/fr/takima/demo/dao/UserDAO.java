package fr.takima.demo.dao;

import fr.takima.demo.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 */
@Repository
public interface UserDAO extends CrudRepository<User, Long> {
    public User findTopByOrderByIdDesc();

    public User findUserById(long id);
}
