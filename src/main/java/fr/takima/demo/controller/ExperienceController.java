package fr.takima.demo.controller;

import fr.takima.demo.dao.ExperienceDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExperienceController {

    private final ExperienceDAO experienceDAO;

    public ExperienceController(ExperienceDAO experienceDAO) {
        this.experienceDAO = experienceDAO;
    }

    @GetMapping("/addExperience")
    public String addExperience(Model m) {
        m.addAttribute("experience", experienceDAO.findAll());
        return "addExperience";
    }
}
