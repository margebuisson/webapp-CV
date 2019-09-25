package fr.takima.demo.controller;

import fr.takima.demo.dao.FormationDAO;
import fr.takima.demo.dao.UserDAO;
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


  public UserController(UserDAO userDAO, FormationDAO formationDAO, FormationDAO formationDAO1) {
    this.userDAO = userDAO;
    this.formationDAO = formationDAO1;
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

  @PostMapping("/createAccount")
  public RedirectView createNewUser(@ModelAttribute User user, RedirectAttributes attrs) {
    attrs.addFlashAttribute("message", "Utilisateur ajouté avec succès");
    userDAO.save(user);
    long id = user.getId();
    return new RedirectView("/addFormation/"+id );
  }

  @GetMapping("/editAccount/{id}")
  public String addUserPage(Model m, @PathVariable long id) {
    m.addAttribute("user", userDAO.findById(id).get());
    return "editAccount";
  }

  @PostMapping("/editAccount/{id}")
  public RedirectView updateUser(@ModelAttribute User user, RedirectAttributes attrs, @PathVariable long id) {
    attrs.addFlashAttribute("message", "Utilisateur ajouté avec succès");
    User oldUser = userDAO.findById(id).get();
    oldUser.setFirstName(user.getFirstName());
    oldUser.setAddress(user.getAddress());
    oldUser.setBirthdate(user.getBirthdate());
    oldUser.setCity(user.getCity());
    oldUser.setMail(user.getMail());
    oldUser.setZipCode(user.getZipCode());
    oldUser.setLastName(user.getLastName());
    oldUser.setMobilePhone(user.getMobilePhone());
    userDAO.save(oldUser);
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
    User user = userDAO.findById(id).get();
    formation.setUser(user);
    attrs.addFlashAttribute("confirmation", "Cette formation a été ajoutée avec succès!");
    formationDAO.save(formation);
    return new RedirectView("/addExperience");
  }

  @PostMapping("/deleteUser/{id}")
  public RedirectView deleteUser(@ModelAttribute User user, RedirectAttributes attrs,@PathVariable long id) {
    attrs.addFlashAttribute("message", "Utilisateur supprimé");
    userDAO.delete(user);
    return new RedirectView("/");
  }

}
