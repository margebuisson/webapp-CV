package fr.takima.demo.controller;

import fr.takima.demo.dao.ExperienceDAO;
import fr.takima.demo.dao.FormationDAO;
import fr.takima.demo.dao.UserDAO;
import fr.takima.demo.model.Experience;
import fr.takima.demo.model.Formation;
import fr.takima.demo.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 */
@Controller
public class UserController {

  private final UserDAO userDAO;
  private final FormationDAO formationDAO;
  private final ExperienceDAO experienceDAO;


  public UserController(UserDAO userDAO, FormationDAO formationDAO, FormationDAO formationDAO1, ExperienceDAO experienceDAO) {
    this.userDAO = userDAO;
    this.formationDAO = formationDAO1;
    this.experienceDAO = experienceDAO;
  }

  @GetMapping("/")
  public String homePage(Model m) {
    m.addAttribute("users", userDAO.findAll());
    return "homepage";
  }

  @GetMapping("/createAccount")
  public String addUserPage(Model m) {
    m.addAttribute("user", new User());
    return "createAccount";
  }

  @GetMapping("/editAccount/{id}")
  public String addUserPage(Model m, @PathVariable long id) {
    m.addAttribute("user", userDAO.findById(id).get());
    return "createAccount";
  }

  @PostMapping("/createAccount")
  public RedirectView createNewUser(@ModelAttribute User user, RedirectAttributes attrs) {
    attrs.addFlashAttribute("message", "Utilisateur ajouté avec succès");
    userDAO.save(user);
    long id = user.getId();
    return new RedirectView("/addFormation/"+id );
  }

  @GetMapping("/addFormation/{id}")
  public String addFormation(Model m, @PathVariable long id) {
    m.addAttribute("formation", new Formation());
    m.addAttribute("user", userDAO.findById(id).get());
    return "addFormation";
  }

  @PostMapping("/addFormation/{id}")
  public RedirectView createNewUser(@ModelAttribute Formation formation, RedirectAttributes attrs, @PathVariable long id) {
    System.out.println("REQUETE POST");
    User user = userDAO.findById(id).get();
    System.out.println("USER: " + user.getId() + user.getFirstName());
    formation.setUser(user);
    attrs.addFlashAttribute("confirmation", "Cette formation a été ajoutée avec succès!");
    formationDAO.save(formation);
    return new RedirectView("/addExperience/"+ user.getId());
  }

  @PostMapping("/deleteUser/{id}")
  public RedirectView deleteUser(@ModelAttribute User user, RedirectAttributes attrs,@PathVariable long id) {
    attrs.addFlashAttribute("message", "Utilisateur supprimé");
    userDAO.delete(user);
    return new RedirectView("/");
  }

  @GetMapping("/addExperience/{id}")
  public String addExperience(Model m, @PathVariable long id) {
    User user=userDAO.findById(id).get();
    m.addAttribute("experience", new Experience());
    m.addAttribute("user",user);
    return "addExperience";
  }

  @PostMapping("/addExperience/{id}")
  public RedirectView addExperience(@ModelAttribute Experience experience, RedirectAttributes attrs, @PathVariable long id) {
    System.out.println("REQUEST POST");
    User user = userDAO.findById(id).get();
    System.out.println("USER: " + user.getId() + user.getFirstName());
    experience.setUser(user);
    attrs.addFlashAttribute("confirmation", "Cette experience a été ajoutée avec succès!");
    experienceDAO.save(experience);
    return new RedirectView("/viewCV");
  }

  @GetMapping("viewCV/{id}")
  public String afficherCV(Model m, @PathVariable long id){
    User user=userDAO.findById(id).get();
    m.addAttribute("user", user);
    m.addAttribute("formation",formationDAO.findByUser(user));
    // m.addAttribute("experience", experienceDAO.findByUser(user));
    return "viewCV";
  }

}
