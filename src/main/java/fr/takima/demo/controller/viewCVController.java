package fr.takima.demo.controller;

import fr.takima.demo.dao.FormationDAO;
import fr.takima.demo.dao.UserDAO;
import fr.takima.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
    public class viewCVController {

       /* private final UserDAO userDAO;
        private final FormationDAO formationDAO;

        public viewCVController(UserDAO userDAO, FormationDAO formationDAO) {
            this.userDAO = userDAO;
            this.formationDAO = formationDAO;
        }

        @GetMapping("/viewCV/{id}")
        public String view(Model m,@PathVariable long id) {
            m.addAttribute("user", userDAO.findById(id).get());
            User user= userDAO.findById(id).get();
            long formation_id= formationDAO.findByUser(user).getId();
            m.addAttribute("formation", formationDAO.findById(formation_id));
            return "viewCV";
        }*/


    }
