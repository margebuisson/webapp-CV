package fr.takima.demo.controller;

import fr.takima.demo.dao.ExperienceDAO;
import org.springframework.stereotype.Controller;

@Controller
public class ExperienceController {
private final ExperienceDAO experienceDAO;

    public ExperienceController(ExperienceDAO experienceDAO) {
        this.experienceDAO = experienceDAO;
    }
   /*
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
    }*/

}
