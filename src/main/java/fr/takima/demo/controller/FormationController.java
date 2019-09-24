package fr.takima.demo.controller;

import fr.takima.demo.dao.FormationDAO;
import fr.takima.demo.dao.UserDAO;
import fr.takima.demo.model.Formation;
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
public class FormationController {
    @Autowired
    private final FormationDAO formationDAO;
    private final UserDAO userDAO;


    public FormationController(FormationDAO formationDAO, UserDAO userDAO) {
        this.formationDAO = formationDAO;
        this.userDAO = userDAO;
    }

    @GetMapping("/addFormation/{user_id}")
    public String addFormation(Model m, @PathVariable long user_id) {
       // long id=userDAO.findTopByOrderByIdDesc().getId();
        m.addAttribute("user",userDAO.findById(user_id).get());
        //User user=userDAO.findById(id).get();
        //long formation_id= formationDAO.findByUser(user).getId();
        //m.addAttribute("formation", formationDAO.findById(formation_id));
        //m.addAttribute("formation",formationDAO.findByUser(user).get());
        m.addAttribute("formation", new Formation());
        return "addFormation";
    }


    @PostMapping("/addFormation")
    public RedirectView addFormation(@ModelAttribute Formation formation, RedirectAttributes attrs) {
        attrs.addFlashAttribute("confirmation", "Cette formation a été ajoutée avec succès!");
        formationDAO.save(formation);
        return new RedirectView("/addExperience");
    }

    @GetMapping("/addFormation/{id}")
    public String editFormation(Model m,@PathVariable long user_id) {
        m.addAttribute("user",userDAO.findById(user_id).get());
        User user=userDAO.findById(user_id).get();
        long formation_id= formationDAO.findByUser(user).getId();
        m.addAttribute("formation", formationDAO.findById(formation_id));
        //m.addAttribute("formation",formationDAO.findByUser(user).get());
       // m.addAttribute("formation", new Formation());
        return "addFormation";
    }

    @PostMapping("/editFormation/{user_id}")
    public String editFormation(@ModelAttribute Formation formation,  @PathVariable long user_id){
        formationDAO.save(formation);
        return "addFormation";
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
