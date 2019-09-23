package fr.takima.demo.dao;

import fr.takima.demo.model.Formation;
import fr.takima.demo.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FormationDAO extends CrudRepository<Formation, Long> {
    Formation findByUser(User user);
    //Formation findByCity(String city);
}