package fr.takima.demo.controller;

import fr.takima.demo.dao.ExperienceDAO;
import fr.takima.demo.dao.FormationDAO;
import fr.takima.demo.dao.UserDAO;
import fr.takima.demo.model.Experience;
import fr.takima.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ExperienceController {
    @Autowired
    private final UserDAO userDAO;
    private final ExperienceDAO experienceDAO;
    private final FormationDAO formationDAO;

    public ExperienceController(UserDAO userDAO, ExperienceDAO experienceDAO, FormationDAO formationDAO) {
        this.userDAO = userDAO;
        this.experienceDAO = experienceDAO;
        this.formationDAO = formationDAO;
    }

    @GetMapping("/addExperience/{id}")
    public String addExperience(Model m, @PathVariable long id) {
        m.addAttribute("experience", new Experience());
        m.addAttribute("user",userDAO.findById(id).get());
        User user=userDAO.findById(id).get();
        long experience_id= formationDAO.findByUser(user).getId();
        m.addAttribute("experience", formationDAO.findById(experience_id));
        return "addExperience";
    }

    @PostMapping("/addExperience")
    public RedirectView createNewUser(@ModelAttribute Experience experience, RedirectAttributes attrs) {
        attrs.addFlashAttribute("message", "Expérience ajoutée avec succès");
        experienceDAO.save(experience);
        return new RedirectView("/viewCV");
    }

}
