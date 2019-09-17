package fr.takima.demo.dao;

import fr.takima.demo.model.Experience;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExperienceDAO extends CrudRepository<Experience, Long> {

}
