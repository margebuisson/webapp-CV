package fr.takima.demo.dao;

import fr.takima.demo.model.Experience;
import fr.takima.demo.model.Formation;
import fr.takima.demo.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExperienceDAO extends CrudRepository<Experience, Long> {

    public Experience findByUser(User user);
}
