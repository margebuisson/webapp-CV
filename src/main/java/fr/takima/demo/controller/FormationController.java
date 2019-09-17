package fr.takima.demo.controller;

import fr.takima.demo.dao.FormationDAO;
import fr.takima.demo.model.Formation;
import fr.takima.demo.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class FormationController {

    private final FormationDAO formationDAO;

    public FormationController(FormationDAO formationDAO) {
        this.formationDAO = formationDAO;
    }

    @GetMapping("/addFormation")
    public String addFormation(Model m) {
        m.addAttribute("formation", new Formation());
        return "addFormation";
    }

    @PostMapping("/addFormation")
    public RedirectView createNewUser(@ModelAttribute Formation formation, RedirectAttributes attrs) {
        attrs.addFlashAttribute("confirmation", "Cette formation a été ajoutée avec succès!");
        formationDAO.save(formation);
        return new RedirectView("/addExperience");
    }

    /*@GetMapping("/")
    public String homePage(Model m) {
        m.addAttribute("users", userDAO.findAll());
        return "acceuil";
    }

    @GetMapping("/createAccount")
    public String addUserPage(Model m) {
        m.addAttribute("user", new User());
        return "createAccount";
    }


    @PostMapping("/createAccount")
    public RedirectView createNewUser(@ModelAttribute User user, RedirectAttributes attrs) {
        attrs.addFlashAttribute("message", "Utilisateur ajouté avec succès");
        userDAO.save(user);
        return new RedirectView("/");
    }*/
}
