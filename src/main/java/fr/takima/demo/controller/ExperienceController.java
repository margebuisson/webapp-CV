package fr.takima.demo.controller;

import fr.takima.demo.dao.ExperienceDAO;
import fr.takima.demo.model.Experience;
import fr.takima.demo.model.Formation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ExperienceController {

    private final ExperienceDAO experienceDAO;

    public ExperienceController(ExperienceDAO experienceDAO) {
        this.experienceDAO = experienceDAO;
    }

    @GetMapping("/addExperience")
    public String addExperience(Model m) {
        m.addAttribute("experience", new Experience());
        return "addExperience";
    }

    @PostMapping("/addExperience")
    public RedirectView createNewUser(@ModelAttribute Experience experience, RedirectAttributes attrs) {
        attrs.addFlashAttribute("message", "Expérience ajoutée avec succès");
        experienceDAO.save(experience);
        return new RedirectView("/viewCV");
    }

}
